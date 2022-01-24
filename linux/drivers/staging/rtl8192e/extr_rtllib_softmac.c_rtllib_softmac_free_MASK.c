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
struct rtllib_device {int /*<<< orphan*/  ps_task; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  wx_sync_scan_wq; int /*<<< orphan*/  ips_leave_wq; int /*<<< orphan*/  associate_complete_wq; int /*<<< orphan*/  link_change_wq; int /*<<< orphan*/  hw_sleep_wq; int /*<<< orphan*/  hw_wakeup_wq; int /*<<< orphan*/  start_ibss_wq; int /*<<< orphan*/  softmac_scan_wq; int /*<<< orphan*/  associate_procedure_wq; int /*<<< orphan*/  associate_retry_wq; int /*<<< orphan*/  associate_timer; int /*<<< orphan*/ * dot11d_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct rtllib_device *ieee)
{
	FUNC4(&ieee->wx_mutex);
	FUNC3(ieee->dot11d_info);
	ieee->dot11d_info = NULL;
	FUNC2(&ieee->associate_timer);

	FUNC0(&ieee->associate_retry_wq);
	FUNC0(&ieee->associate_procedure_wq);
	FUNC0(&ieee->softmac_scan_wq);
	FUNC0(&ieee->start_ibss_wq);
	FUNC0(&ieee->hw_wakeup_wq);
	FUNC0(&ieee->hw_sleep_wq);
	FUNC0(&ieee->link_change_wq);
	FUNC1(&ieee->associate_complete_wq);
	FUNC1(&ieee->ips_leave_wq);
	FUNC1(&ieee->wx_sync_scan_wq);
	FUNC5(&ieee->wx_mutex);
	FUNC6(&ieee->ps_task);
}