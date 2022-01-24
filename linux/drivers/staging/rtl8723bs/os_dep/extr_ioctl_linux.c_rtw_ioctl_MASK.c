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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct iwreq {TYPE_1__ u; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  RTL_IOCTL_HOSTAPD 130 
#define  RTL_IOCTL_WPA_SUPPLICANT 129 
#define  SIOCDEVPRIVATE 128 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct net_device*,TYPE_1__*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 

int FUNC3(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct iwreq *wrq = (struct iwreq *)rq;
	int ret = 0;

	switch (cmd) {
	case RTL_IOCTL_WPA_SUPPLICANT:
		ret = FUNC2(dev, &wrq->u.data);
		break;
	case RTL_IOCTL_HOSTAPD:
		ret = FUNC0(dev, &wrq->u.data);
		break;
	case SIOCDEVPRIVATE:
		ret = FUNC1(dev, &wrq->u);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}

	return ret;
}