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
struct TYPE_4__ {scalar_t__ fixed; int /*<<< orphan*/  value; } ;
union iwreq_data {TYPE_2__ rts; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rts_thresh; } ;
struct _adapter {TYPE_1__ registrypriv; } ;

/* Variables and functions */
 struct _adapter* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev,
				struct iw_request_info *info,
				union iwreq_data *wrqu, char *extra)
{
	struct _adapter *padapter = FUNC0(dev);

	wrqu->rts.value = padapter->registrypriv.rts_thresh;
	wrqu->rts.fixed = 0;	/* no auto select */
	return 0;
}