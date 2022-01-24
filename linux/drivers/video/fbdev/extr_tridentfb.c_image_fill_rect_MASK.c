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
typedef  int u32 ;
struct tridentfb_par {int dummy; } ;

/* Variables and functions */
 int DST1 ; 
 int DST2 ; 
 int ROP_S ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*,int,int) ; 

__attribute__((used)) static void FUNC2(struct tridentfb_par *par,
			    u32 x, u32 y, u32 w, u32 h, u32 c, u32 rop)
{
	FUNC1(par, 0x2120, 0x80000000);
	FUNC1(par, 0x2120, 0x90000000 | ROP_S);

	FUNC1(par, 0x2144, c);

	FUNC1(par, DST1, FUNC0(x, y));
	FUNC1(par, DST2, FUNC0(x + w - 1, y + h - 1));

	FUNC1(par, 0x2124, 0x80000000 | 3 << 22 | 1 << 10 | 1 << 9);
}