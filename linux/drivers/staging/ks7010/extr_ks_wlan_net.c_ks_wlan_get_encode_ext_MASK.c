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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ SLP_SLEEP ; 
 struct ks_wlan_private* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev,
				  struct iw_request_info *info,
				  union iwreq_data *dwrq, char *extra)
{
	struct ks_wlan_private *priv = FUNC0(dev);

	if (priv->sleep_mode == SLP_SLEEP)
		return -EPERM;

	/* for SLEEP MODE */
	/* WPA (not used ?? wpa_supplicant)
	 * struct ks_wlan_private *priv = (struct ks_wlan_private *)dev->priv;
	 * struct iw_encode_ext *enc;
	 * enc = (struct iw_encode_ext *)extra;
	 * int index = dwrq->flags & IW_ENCODE_INDEX;
	 * WPA (not used ?? wpa_supplicant)
	 */
	return 0;
}