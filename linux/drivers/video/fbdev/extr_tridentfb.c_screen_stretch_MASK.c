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
struct tridentfb_par {scalar_t__ chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BiosReg ; 
 scalar_t__ CYBERBLADEXPAi1 ; 
 int /*<<< orphan*/  HorStretch ; 
 int /*<<< orphan*/  VertStretch ; 
 int FUNC0 (struct tridentfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct tridentfb_par *par)
{
	if (par->chip_id != CYBERBLADEXPAi1)
		FUNC1(par, BiosReg, 0);
	else
		FUNC1(par, BiosReg, 8);
	FUNC1(par, VertStretch, (FUNC0(par, VertStretch) & 0x7C) | 1);
	FUNC1(par, HorStretch, (FUNC0(par, HorStretch) & 0x7C) | 1);
}