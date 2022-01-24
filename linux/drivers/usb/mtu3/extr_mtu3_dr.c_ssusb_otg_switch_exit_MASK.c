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
struct otg_switch_mtk {int /*<<< orphan*/  role_sw; int /*<<< orphan*/  vbus_work; int /*<<< orphan*/  id_work; } ;
struct ssusb_mtk {struct otg_switch_mtk otg_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ssusb_mtk *ssusb)
{
	struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;

	FUNC0(&otg_sx->id_work);
	FUNC0(&otg_sx->vbus_work);
	FUNC1(otg_sx->role_sw);
}