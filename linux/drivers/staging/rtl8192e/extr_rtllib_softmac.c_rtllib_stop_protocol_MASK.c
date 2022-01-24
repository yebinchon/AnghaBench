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
typedef  scalar_t__ u8 ;
struct rtllib_device {int proto_stoppping; scalar_t__ state; scalar_t__ iw_mode; scalar_t__ assocresp_ies_len; int /*<<< orphan*/ * assocresp_ies; scalar_t__ assocreq_ies_len; int /*<<< orphan*/ * assocreq_ies; int /*<<< orphan*/  link_change_wq; int /*<<< orphan*/  start_ibss_wq; int /*<<< orphan*/  associate_retry_wq; int /*<<< orphan*/  associate_timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* rtllib_ips_leave ) (int /*<<< orphan*/ ) ;scalar_t__ proto_started; } ;

/* Variables and functions */
 scalar_t__ IW_MODE_INFRA ; 
 scalar_t__ RTLLIB_ASSOCIATING_AUTHENTICATED ; 
 scalar_t__ RTLLIB_LINKED ; 
 scalar_t__ RTLLIB_NOLINK ; 
 int /*<<< orphan*/  FUNC0 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct rtllib_device *ieee, u8 shutdown)
{
	if (!ieee->proto_started)
		return;

	if (shutdown) {
		ieee->proto_started = 0;
		ieee->proto_stoppping = 1;
		if (ieee->rtllib_ips_leave != NULL)
			ieee->rtllib_ips_leave(ieee->dev);
	}

	FUNC7(ieee);
	FUNC3(&ieee->associate_timer);
	FUNC2(&ieee->associate_retry_wq);
	FUNC2(&ieee->start_ibss_wq);
	FUNC2(&ieee->link_change_wq);
	FUNC6(ieee);

	if (ieee->state <= RTLLIB_ASSOCIATING_AUTHENTICATED)
		ieee->state = RTLLIB_NOLINK;

	if (ieee->state == RTLLIB_LINKED) {
		if (ieee->iw_mode == IW_MODE_INFRA)
			FUNC1(ieee, 1, WLAN_REASON_DEAUTH_LEAVING);
		FUNC5(ieee);
	}

	if (shutdown) {
		FUNC0(ieee);
		ieee->proto_stoppping = 0;
	}
	FUNC4(ieee->assocreq_ies);
	ieee->assocreq_ies = NULL;
	ieee->assocreq_ies_len = 0;
	FUNC4(ieee->assocresp_ies);
	ieee->assocresp_ies = NULL;
	ieee->assocresp_ies_len = 0;
}