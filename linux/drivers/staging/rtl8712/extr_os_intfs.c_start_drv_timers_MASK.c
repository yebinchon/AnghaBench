#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sitesurvey_ctrl_timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  wdg_timer; TYPE_1__ sitesurveyctrl; } ;
struct _adapter {TYPE_2__ mlmepriv; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct _adapter *padapter)
{
	FUNC0(&padapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
		  jiffies + FUNC1(5000));
	FUNC0(&padapter->mlmepriv.wdg_timer,
		  jiffies + FUNC1(2000));
}