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
struct samsung_usb2_phy_instance {int /*<<< orphan*/  int_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct samsung_usb2_phy_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct samsung_usb2_phy_instance*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct samsung_usb2_phy_instance*) ; 

__attribute__((used)) static void FUNC3(struct samsung_usb2_phy_instance *inst)
{
	if (inst->int_cnt++ > 0)
		return;

	FUNC2(inst);
	FUNC0(inst, 0);
	FUNC1(inst, 1);
}