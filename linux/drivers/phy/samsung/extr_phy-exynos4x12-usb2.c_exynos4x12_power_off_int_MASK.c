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
 int /*<<< orphan*/  FUNC0 (struct samsung_usb2_phy_instance*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct samsung_usb2_phy_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct samsung_usb2_phy_instance *inst)
{
	if (inst->int_cnt-- > 1)
		return;

	FUNC0(inst, 1);
	FUNC1(inst, 0);
}