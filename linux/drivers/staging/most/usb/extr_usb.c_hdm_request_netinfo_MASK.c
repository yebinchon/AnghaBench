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
struct most_interface {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct most_dev {void (* on_netinfo ) (struct most_interface*,unsigned char,unsigned char*) ;TYPE_1__ link_stat_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 struct most_dev* FUNC2 (struct most_interface*) ; 

__attribute__((used)) static void FUNC3(struct most_interface *iface, int channel,
				void (*on_netinfo)(struct most_interface *,
						   unsigned char,
						   unsigned char *))
{
	struct most_dev *mdev;

	FUNC0(!iface);
	mdev = FUNC2(iface);
	mdev->on_netinfo = on_netinfo;
	if (!on_netinfo)
		return;

	mdev->link_stat_timer.expires = jiffies + HZ;
	FUNC1(&mdev->link_stat_timer, mdev->link_stat_timer.expires);
}