#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sitesurvey_ctrl_timer; } ;
struct TYPE_6__ {TYPE_1__ sitesurveyctrl; int /*<<< orphan*/  wdg_timer; int /*<<< orphan*/  dhcp_timer; int /*<<< orphan*/  scan_to_timer; int /*<<< orphan*/  assoc_timer; } ;
struct TYPE_5__ {int /*<<< orphan*/  tkip_timer; } ;
struct _adapter {TYPE_3__ mlmepriv; TYPE_2__ securitypriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct _adapter *padapter)
{
	FUNC0(&padapter->mlmepriv.assoc_timer);
	FUNC0(&padapter->securitypriv.tkip_timer);
	FUNC0(&padapter->mlmepriv.scan_to_timer);
	FUNC0(&padapter->mlmepriv.dhcp_timer);
	FUNC0(&padapter->mlmepriv.wdg_timer);
	FUNC0(&padapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
}