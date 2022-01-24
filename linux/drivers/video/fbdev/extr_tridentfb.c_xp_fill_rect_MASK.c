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
struct tridentfb_par {int eng_oper; } ;

/* Variables and functions */
 int DRAWFL ; 
 int OLDCMD ; 
 int OLDDIM ; 
 int OLDDST ; 
 int ROP_P ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tridentfb_par*,int,int) ; 

__attribute__((used)) static void FUNC3(struct tridentfb_par *par,
			 u32 x, u32 y, u32 w, u32 h, u32 c, u32 rop)
{
	FUNC2(par, 0x2127, ROP_P);
	FUNC2(par, 0x2158, c);
	FUNC2(par, DRAWFL, 0x4000);
	FUNC2(par, OLDDIM, FUNC0(h, w));
	FUNC2(par, OLDDST, FUNC0(y, x));
	FUNC1(par, 0x01, OLDCMD);
	FUNC1(par, par->eng_oper, 0x2125);
}