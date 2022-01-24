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
struct wilc_vif {int dummy; } ;
struct timer_list {int dummy; } ;
struct host_if_msg {int dummy; } ;
struct host_if_drv {struct wilc_vif* scan_timer_vif; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct host_if_msg*) ; 
 struct host_if_drv* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_scan_timer ; 
 struct host_if_drv* hif_drv ; 
 int /*<<< orphan*/  FUNC2 (struct host_if_msg*) ; 
 int /*<<< orphan*/  scan_timer ; 
 struct host_if_msg* FUNC3 (struct wilc_vif*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct host_if_msg*) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct host_if_drv *hif_drv = FUNC1(hif_drv, t, scan_timer);
	struct wilc_vif *vif = hif_drv->scan_timer_vif;
	struct host_if_msg *msg;
	int result;

	msg = FUNC3(vif, handle_scan_timer, false);
	if (FUNC0(msg))
		return;

	result = FUNC4(msg);
	if (result)
		FUNC2(msg);
}