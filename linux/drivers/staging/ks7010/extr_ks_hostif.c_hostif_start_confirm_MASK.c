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
struct TYPE_4__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
struct ks_wlan_private {int /*<<< orphan*/  scan_ind_count; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  connect_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  SME_START_CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC5(struct ks_wlan_private *priv)
{
	union iwreq_data wrqu;

	wrqu.data.length = 0;
	wrqu.data.flags = 0;
	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
	if (FUNC2(priv->connect_status)) {
		FUNC0(wrqu.ap_addr.sa_data);
		FUNC4(priv->net_dev, SIOCGIWAP, &wrqu, NULL);
	}
	FUNC3(priv->net_dev, " scan_ind_count=%d\n", priv->scan_ind_count);
	FUNC1(priv, SME_START_CONFIRM);
}