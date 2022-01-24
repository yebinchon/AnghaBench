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
struct TYPE_4__ {scalar_t__ length; } ;
union iwreq_data {TYPE_2__ data; } ;
struct TYPE_3__ {int bPromiscuousOn; int bFilterSourceStationFrame; } ;
struct rtllib_device {TYPE_1__ IntelPromiscuousModeInfo; } ;
struct r8192_priv {int /*<<< orphan*/  wx_mutex; struct rtllib_device* rtllib; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				       struct iw_request_info *info,
				       union iwreq_data *wrqu, char *extra)
{
	struct r8192_priv *priv = FUNC2(dev);
	struct rtllib_device *ieee = priv->rtllib;

	FUNC0(&priv->wx_mutex);

	FUNC3(extra, 45, "PromiscuousMode:%d, FilterSrcSTAFrame:%d",
		 ieee->IntelPromiscuousModeInfo.bPromiscuousOn,
		 ieee->IntelPromiscuousModeInfo.bFilterSourceStationFrame);
	wrqu->data.length = FUNC4(extra) + 1;

	FUNC1(&priv->wx_mutex);

	return 0;
}