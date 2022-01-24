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
struct ssusb_mtk {int /*<<< orphan*/  otg_switch; scalar_t__ is_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssusb_mtk*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ssusb_mtk *ssusb)
{
	if (ssusb->is_host)
		FUNC1(&ssusb->otg_switch, 0);

	FUNC0(ssusb, false);
}