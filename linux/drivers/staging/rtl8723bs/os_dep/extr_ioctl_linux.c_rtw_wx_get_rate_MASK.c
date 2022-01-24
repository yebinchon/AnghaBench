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
struct TYPE_2__ {int value; scalar_t__ fixed; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct adapter*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
			     struct iw_request_info *info,
			     union iwreq_data *wrqu, char *extra)
{
	u16 max_rate = 0;

	max_rate = FUNC0((struct adapter *)FUNC1(dev));

	if (max_rate == 0)
		return -EPERM;

	wrqu->bitrate.fixed = 0;	/* no auto select */
	wrqu->bitrate.value = max_rate * 100000;

	return 0;
}