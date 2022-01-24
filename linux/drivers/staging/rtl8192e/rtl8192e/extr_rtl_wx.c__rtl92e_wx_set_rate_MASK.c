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
struct r8192_priv {int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  rtllib; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iw_request_info*,union iwreq_data*,char*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	int ret;
	struct r8192_priv *priv = FUNC2(dev);

	if (priv->bHwRadioOff)
		return 0;

	FUNC0(&priv->wx_mutex);

	ret = FUNC3(priv->rtllib, info, wrqu, extra);

	FUNC1(&priv->wx_mutex);

	return ret;
}