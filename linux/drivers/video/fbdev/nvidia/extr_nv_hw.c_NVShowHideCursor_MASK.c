#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvidia_par {scalar_t__ Architecture; int /*<<< orphan*/  PRAMDAC; TYPE_1__* CurrentState; int /*<<< orphan*/  PCIO; } ;
struct TYPE_2__ {int cursor1; } ;

/* Variables and functions */
 scalar_t__ NV_ARCH_40 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

int FUNC3(struct nvidia_par *par, int ShowHide)
{
	int cur = par->CurrentState->cursor1;

	par->CurrentState->cursor1 = (par->CurrentState->cursor1 & 0xFE) |
	    (ShowHide & 0x01);
	FUNC2(par->PCIO, 0x3D4, 0x31);
	FUNC2(par->PCIO, 0x3D5, par->CurrentState->cursor1);

	if (par->Architecture == NV_ARCH_40)
		FUNC1(par->PRAMDAC, 0x0300, FUNC0(par->PRAMDAC, 0x0300));

	return (cur & 0x01);
}