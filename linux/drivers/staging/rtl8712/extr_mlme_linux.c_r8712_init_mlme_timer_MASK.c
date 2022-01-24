#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sitesurvey_ctrl_timer; } ;
struct mlme_priv {int /*<<< orphan*/  wdg_timer; int /*<<< orphan*/  dhcp_timer; int /*<<< orphan*/  scan_to_timer; TYPE_1__ sitesurveyctrl; int /*<<< orphan*/  assoc_timer; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  _scan_timeout_handler ; 
 int /*<<< orphan*/  dhcp_timeout_handler ; 
 int /*<<< orphan*/  join_timeout_handler ; 
 int /*<<< orphan*/  sitesurvey_ctrl_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdg_timeout_handler ; 

void FUNC1(struct _adapter *adapter)
{
	struct	mlme_priv *mlmepriv = &adapter->mlmepriv;

	FUNC0(&mlmepriv->assoc_timer, join_timeout_handler, 0);
	FUNC0(&mlmepriv->sitesurveyctrl.sitesurvey_ctrl_timer,
		    sitesurvey_ctrl_handler, 0);
	FUNC0(&mlmepriv->scan_to_timer, _scan_timeout_handler, 0);
	FUNC0(&mlmepriv->dhcp_timer, dhcp_timeout_handler, 0);
	FUNC0(&mlmepriv->wdg_timer, wdg_timeout_handler, 0);
}