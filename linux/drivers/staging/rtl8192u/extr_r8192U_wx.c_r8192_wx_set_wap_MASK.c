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
struct r8192_priv {int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct iw_request_info*,union iwreq_data*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			 struct iw_request_info *info,
			 union iwreq_data *awrq,
			 char *extra)
{

	int ret;
	struct r8192_priv *priv = FUNC0(dev);
	/* struct sockaddr *temp = (struct sockaddr *)awrq; */
	FUNC2(&priv->wx_mutex);

	ret = FUNC1(priv->ieee80211, info, awrq, extra);

	FUNC3(&priv->wx_mutex);

	return ret;

}