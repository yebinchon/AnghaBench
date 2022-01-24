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
struct rtw_vif {int in_lps; } ;
struct rtw_lps_conf {struct rtw_vif* rtwvif; int /*<<< orphan*/  mode; } ;
struct rtw_dev {struct rtw_lps_conf lps_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_MODE_ACTIVE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 

void FUNC2(struct rtw_dev *rtwdev, struct rtw_vif *rtwvif)
{
	struct rtw_lps_conf *conf = &rtwdev->lps_conf;

	if (FUNC0(!rtwvif))
		return;

	if (!rtwvif->in_lps)
		return;

	conf->mode = RTW_MODE_ACTIVE;
	conf->rtwvif = rtwvif;
	rtwvif->in_lps = false;

	FUNC1(rtwdev);
}