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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  unsigned short u16 ;
typedef  int sint ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int PHASE1_LOOP_CNT ; 
 unsigned short FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned short) ; 

__attribute__((used)) static void FUNC5(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
{
	sint  i;

	/* Initialize the 80 bits of P1K[] from IV32 and TA[0..5]     */
	p1k[0] = FUNC1(iv32);
	p1k[1] = FUNC0(iv32);
	p1k[2] = FUNC2(ta[1], ta[0]); /* use TA[] as little-endian */
	p1k[3] = FUNC2(ta[3], ta[2]);
	p1k[4] = FUNC2(ta[5], ta[4]);
	/* Now compute an unbalanced Feistel cipher with 80-bit block */
	/* size on the 80-bit block P1K[], using the 128-bit key TK[] */
	for (i = 0; i < PHASE1_LOOP_CNT; i++) {  /* Each add is mod 2**16 */
		p1k[0] += FUNC4(p1k[4] ^ FUNC3((i & 1) + 0));
		p1k[1] += FUNC4(p1k[0] ^ FUNC3((i & 1) + 2));
		p1k[2] += FUNC4(p1k[1] ^ FUNC3((i & 1) + 4));
		p1k[3] += FUNC4(p1k[2] ^ FUNC3((i & 1) + 6));
		p1k[4] += FUNC4(p1k[3] ^ FUNC3((i & 1) + 0));
		p1k[4] +=  (unsigned short)i;	/* avoid "slide attacks" */
	}
}