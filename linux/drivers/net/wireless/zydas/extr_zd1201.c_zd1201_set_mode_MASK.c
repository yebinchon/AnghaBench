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
struct zd1201 {short monitor; int /*<<< orphan*/  essidlen; int /*<<< orphan*/  essid; TYPE_1__* dev; scalar_t__ ap; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPHRD_IEEE80211 ; 
 int EINVAL ; 
 int IW_ESSID_MAX_SIZE ; 
#define  IW_MODE_ADHOC 130 
#define  IW_MODE_INFRA 129 
 int IW_MODE_MASTER ; 
#define  IW_MODE_MONITOR 128 
 short ZD1201_PORTTYPE_BSS ; 
 short ZD1201_PORTTYPE_IBSS ; 
 short ZD1201_PORTTYPE_PSEUDOIBSS ; 
 int /*<<< orphan*/  ZD1201_RID_CNFDESIREDSSID ; 
 int /*<<< orphan*/  ZD1201_RID_CNFPORTTYPE ; 
 int /*<<< orphan*/  ZD1201_RID_PROMISCUOUSMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zd1201* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct zd1201*) ; 
 int /*<<< orphan*/  FUNC4 (struct zd1201*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct zd1201*) ; 
 int FUNC6 (struct zd1201*,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int FUNC7 (struct zd1201*,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
    struct iw_request_info *info, __u32 *mode, char *extra)
{
	struct zd1201 *zd = FUNC2(dev);
	short porttype, monitor = 0;
	unsigned char buffer[IW_ESSID_MAX_SIZE+2];
	int err;

	if (zd->ap) {
		if (*mode != IW_MODE_MASTER)
			return -EINVAL;
		return 0;
	}

	err = FUNC7(zd, ZD1201_RID_PROMISCUOUSMODE, 0);
	if (err)
		return err;
	zd->dev->type = ARPHRD_ETHER;
	switch(*mode) {
		case IW_MODE_MONITOR:
			monitor = 1;
			zd->dev->type = ARPHRD_IEEE80211;
			/* Make sure we are no longer associated with by
			   setting an 'impossible' essid.
			   (otherwise we mess up firmware)
			 */
			FUNC4(zd, "\0-*#\0", 5);
			/* Put port in pIBSS */
			/* Fall through */
		case 8: /* No pseudo-IBSS in wireless extensions (yet) */
			porttype = ZD1201_PORTTYPE_PSEUDOIBSS;
			break;
		case IW_MODE_ADHOC:
			porttype = ZD1201_PORTTYPE_IBSS;
			break;
		case IW_MODE_INFRA:
			porttype = ZD1201_PORTTYPE_BSS;
			break;
		default:
			return -EINVAL;
	}

	err = FUNC7(zd, ZD1201_RID_CNFPORTTYPE, porttype);
	if (err)
		return err;
	if (zd->monitor && !monitor) {
			FUNC3(zd);
			*(__le16 *)buffer = FUNC0(zd->essidlen);
			FUNC1(buffer+2, zd->essid, zd->essidlen);
			err = FUNC6(zd, ZD1201_RID_CNFDESIREDSSID,
			    buffer, IW_ESSID_MAX_SIZE+2, 1);
			if (err)
				return err;
	}
	zd->monitor = monitor;
	/* If monitor mode is set we don't actually turn it on here since it
	 * is done during mac reset anyway (see zd1201_mac_enable).
	 */
	FUNC5(zd);

	return 0;
}