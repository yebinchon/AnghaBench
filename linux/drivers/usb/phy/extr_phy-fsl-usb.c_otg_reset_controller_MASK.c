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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  usbcmd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* usb_dr_regs ; 

void FUNC2(void)
{
	u32 command;

	command = FUNC0(&usb_dr_regs->usbcmd);
	command |= (1 << 1);
	FUNC1(command, &usb_dr_regs->usbcmd);
	while (FUNC0(&usb_dr_regs->usbcmd) & (1 << 1))
		;
}