#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mask; int addr; } ;
typedef  TYPE_1__ psw_t ;

/* Variables and functions */
 int PSW_MASK_BA ; 
 int PSW_MASK_BASE ; 
 int PSW_MASK_EA ; 
 int PSW_MASK_WAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(void)
{
	psw_t quiesce_psw;

	FUNC1();
	quiesce_psw.mask =
		PSW_MASK_BASE | PSW_MASK_EA | PSW_MASK_BA | PSW_MASK_WAIT;
	quiesce_psw.addr = 0xfff;
	FUNC0(quiesce_psw);
}