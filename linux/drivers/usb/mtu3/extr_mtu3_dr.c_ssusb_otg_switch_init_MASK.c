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
struct otg_switch_mtk {scalar_t__ role_sw_used; scalar_t__ manual_drd_enabled; int /*<<< orphan*/  vbus_work; int /*<<< orphan*/  id_work; } ;
struct ssusb_mtk {struct otg_switch_mtk otg_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssusb_mtk*) ; 
 int FUNC2 (struct otg_switch_mtk*) ; 
 int /*<<< orphan*/  ssusb_id_work ; 
 int FUNC3 (struct otg_switch_mtk*) ; 
 int /*<<< orphan*/  ssusb_vbus_work ; 

int FUNC4(struct ssusb_mtk *ssusb)
{
	struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;
	int ret = 0;

	FUNC0(&otg_sx->id_work, ssusb_id_work);
	FUNC0(&otg_sx->vbus_work, ssusb_vbus_work);

	if (otg_sx->manual_drd_enabled)
		FUNC1(ssusb);
	else if (otg_sx->role_sw_used)
		ret = FUNC3(otg_sx);
	else
		ret = FUNC2(otg_sx);

	return ret;
}