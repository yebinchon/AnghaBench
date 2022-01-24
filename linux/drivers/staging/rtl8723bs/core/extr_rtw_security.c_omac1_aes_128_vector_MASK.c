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
typedef  int u8 ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(u8 *key, size_t num_elem,
							 u8 *addr[], size_t *len, u8 *mac)
{
	void *ctx;
	u8 cbc[AES_BLOCK_SIZE], pad[AES_BLOCK_SIZE];
	u8 *pos, *end;
	size_t i, e, left, total_len;

	ctx = FUNC2(key, 16);
	if (ctx == NULL)
		return -1;
	FUNC4(cbc, 0, AES_BLOCK_SIZE);

	total_len = 0;
	for (e = 0; e < num_elem; e++)
		total_len += len[e];
	left = total_len;

	e = 0;
	pos = addr[0];
	end = pos + len[0];

	while (left >= AES_BLOCK_SIZE) {
		for (i = 0; i < AES_BLOCK_SIZE; i++) {
			cbc[i] ^= *pos++;
			if (pos >= end) {
				e++;
				pos = addr[e];
				end = pos + len[e];
			}
		}
		if (left > AES_BLOCK_SIZE)
			FUNC0(ctx, cbc, cbc);
		left -= AES_BLOCK_SIZE;
	}

	FUNC4(pad, 0, AES_BLOCK_SIZE);
	FUNC0(ctx, pad, pad);
	FUNC3(pad);

	if (left || total_len == 0) {
		for (i = 0; i < left; i++) {
			cbc[i] ^= *pos++;
			if (pos >= end) {
				e++;
				pos = addr[e];
				end = pos + len[e];
			}
		}
		cbc[left] ^= 0x80;
		FUNC3(pad);
	}

	for (i = 0; i < AES_BLOCK_SIZE; i++)
		pad[i] ^= cbc[i];
	FUNC0(ctx, pad, mac);
	FUNC1(ctx);
	return 0;
}