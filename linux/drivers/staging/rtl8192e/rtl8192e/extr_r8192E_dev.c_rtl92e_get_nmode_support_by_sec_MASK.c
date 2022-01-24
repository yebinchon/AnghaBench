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
struct rtllib_device {int (* rtllib_ap_sec_type ) (struct rtllib_device*) ;} ;
struct r8192_priv {struct rtllib_device* rtllib; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int SEC_ALG_TKIP ; 
 int SEC_ALG_WEP ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct rtllib_device*) ; 

bool FUNC2(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC0(dev);
	struct rtllib_device *ieee = priv->rtllib;

	if (ieee->rtllib_ap_sec_type &&
	   (ieee->rtllib_ap_sec_type(priv->rtllib)&(SEC_ALG_WEP |
				     SEC_ALG_TKIP))) {
		return false;
	} else {
		return true;
	}
}