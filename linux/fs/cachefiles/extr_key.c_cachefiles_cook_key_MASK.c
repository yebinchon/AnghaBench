#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  unsigned int uint16_t ;
typedef  unsigned char u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  FSCACHE_COOKIE_TYPE_DATAFILE 129 
#define  FSCACHE_COOKIE_TYPE_INDEX 128 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* cachefiles_charmap ; 
 int* cachefiles_filecharmap ; 
 int /*<<< orphan*/  cachefiles_gfp ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int,int /*<<< orphan*/ ) ; 

char *FUNC7(const u8 *raw, int keylen, uint8_t type)
{
	unsigned char csum, ch;
	unsigned int acc;
	char *key;
	int loop, len, max, seg, mark, print;

	FUNC3(",%d", keylen);

	FUNC1(keylen < 2 || keylen > 514);

	csum = raw[0] + raw[1];
	print = 1;
	for (loop = 2; loop < keylen; loop++) {
		ch = raw[loop];
		csum += ch;
		print &= cachefiles_filecharmap[ch];
	}

	if (print) {
		/* if the path is usable ASCII, then we render it directly */
		max = keylen - 2;
		max += 2;	/* two base64'd length chars on the front */
		max += 5;	/* @checksum/M */
		max += 3 * 2;	/* maximum number of segment dividers (".../M")
				 * is ((514 + 251) / 252) = 3
				 */
		max += 1;	/* NUL on end */
	} else {
		/* calculate the maximum length of the cooked key */
		keylen = (keylen + 2) / 3;

		max = keylen * 4;
		max += 5;	/* @checksum/M */
		max += 3 * 2;	/* maximum number of segment dividers (".../M")
				 * is ((514 + 188) / 189) = 3
				 */
		max += 1;	/* NUL on end */
	}

	max += 1;	/* 2nd NUL on end */

	FUNC2("max: %d", max);

	key = FUNC5(max, cachefiles_gfp);
	if (!key)
		return NULL;

	len = 0;

	/* build the cooked key */
	FUNC6(key, "@%02x%c+", (unsigned) csum, 0);
	len = 5;
	mark = len - 1;

	if (print) {
		acc = *(uint16_t *) raw;
		raw += 2;

		key[len + 1] = cachefiles_charmap[acc & 63];
		acc >>= 6;
		key[len] = cachefiles_charmap[acc & 63];
		len += 2;

		seg = 250;
		for (loop = keylen; loop > 0; loop--) {
			if (seg <= 0) {
				key[len++] = '\0';
				mark = len;
				key[len++] = '+';
				seg = 252;
			}

			key[len++] = *raw++;
			FUNC0(len < max);
		}

		switch (type) {
		case FSCACHE_COOKIE_TYPE_INDEX:		type = 'I';	break;
		case FSCACHE_COOKIE_TYPE_DATAFILE:	type = 'D';	break;
		default:				type = 'S';	break;
		}
	} else {
		seg = 252;
		for (loop = keylen; loop > 0; loop--) {
			if (seg <= 0) {
				key[len++] = '\0';
				mark = len;
				key[len++] = '+';
				seg = 252;
			}

			acc = *raw++;
			acc |= *raw++ << 8;
			acc |= *raw++ << 16;

			FUNC2("acc: %06x", acc);

			key[len++] = cachefiles_charmap[acc & 63];
			acc >>= 6;
			key[len++] = cachefiles_charmap[acc & 63];
			acc >>= 6;
			key[len++] = cachefiles_charmap[acc & 63];
			acc >>= 6;
			key[len++] = cachefiles_charmap[acc & 63];

			FUNC0(len < max);
		}

		switch (type) {
		case FSCACHE_COOKIE_TYPE_INDEX:		type = 'J';	break;
		case FSCACHE_COOKIE_TYPE_DATAFILE:	type = 'E';	break;
		default:				type = 'T';	break;
		}
	}

	key[mark] = type;
	key[len++] = 0;
	key[len] = 0;

	FUNC4(" = %p %d", key, len);
	return key;
}