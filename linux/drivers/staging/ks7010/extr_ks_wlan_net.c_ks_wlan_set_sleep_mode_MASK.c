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
struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; } ;
struct iw_request_info {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SLP_ACTIVE ; 
 scalar_t__ SLP_SLEEP ; 
 int /*<<< orphan*/  SME_SLEEP_REQUEST ; 
 int /*<<< orphan*/  SME_STOP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,scalar_t__) ; 
 struct ks_wlan_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				  struct iw_request_info *info,
				  __u32 *uwrq, char *extra)
{
	struct ks_wlan_private *priv = FUNC3(dev);

	if (*uwrq != SLP_SLEEP &&
	    *uwrq != SLP_ACTIVE) {
		FUNC1(dev, "SET_SLEEP_MODE %d error\n", *uwrq);
		return -EINVAL;
	}

	priv->sleep_mode = *uwrq;
	FUNC2(dev, "SET_SLEEP_MODE %d\n", priv->sleep_mode);

	if (*uwrq == SLP_SLEEP)
		FUNC0(priv, SME_STOP_REQUEST);

	FUNC0(priv, SME_SLEEP_REQUEST);

	return 0;
}