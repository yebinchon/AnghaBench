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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int active_scan; } ;

/* Variables and functions */
 struct r8192_priv* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev, struct iw_request_info *aa,
					union iwreq_data *wrqu, char *p)
{

	struct r8192_priv *priv = FUNC0(dev);
	int *parms = (int *)p;
	int mode = parms[0];

	priv->ieee80211->active_scan = mode;

	return 1;
}