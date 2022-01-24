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
struct kbd_data {unsigned short** key_maps; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned short) ; 
 int KT_DEAD ; 
 int KT_LATIN ; 
 int KT_LETTER ; 
 size_t FUNC2 (unsigned short) ; 
 int NR_KEYS ; 
 int /*<<< orphan*/  ebc_key_maps ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int) ; 
 size_t* ret_diacr ; 

void
FUNC4(struct kbd_data *kbd, unsigned char *ascebc)
{
	unsigned short *keymap, keysym;
	int i, j, k;

	FUNC3(ascebc, 0x40, 256);
	for (i = 0; i < FUNC0(ebc_key_maps); i++) {
		keymap = kbd->key_maps[i];
		if (!keymap)
			continue;
		for (j = 0; j < NR_KEYS; j++) {
			k = ((i & 1) << 7) + j;
			keysym = keymap[j];
			if (FUNC1(keysym) == (KT_LATIN | 0xf0) ||
			    FUNC1(keysym) == (KT_LETTER | 0xf0))
				ascebc[FUNC2(keysym)] = k;
			else if (FUNC1(keysym) == (KT_DEAD | 0xf0))
				ascebc[ret_diacr[FUNC2(keysym)]] = k;
		}
	}
}