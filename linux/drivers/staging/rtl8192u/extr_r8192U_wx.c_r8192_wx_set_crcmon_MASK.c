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
struct r8192_priv {int crcmon; int /*<<< orphan*/  wx_mutex; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct r8192_priv *priv = FUNC1(dev);
	int *parms = (int *)extra;
	int enable = (parms[0] > 0);

	FUNC2(&priv->wx_mutex);

	if (enable)
		priv->crcmon = 1;
	else
		priv->crcmon = 0;

	FUNC0("bad CRC in monitor mode are %s",
	      priv->crcmon ? "accepted" : "rejected");

	FUNC3(&priv->wx_mutex);

	return 0;
}