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
typedef  int /*<<< orphan*/  u16 ;
struct nic {TYPE_1__* phy_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  priv_dev; int /*<<< orphan*/  (* send_hci_func ) (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 struct nic* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, u16 type,
			      void *msg, int len)
{
	struct nic *nic = FUNC0(dev);

	nic->phy_dev->send_hci_func(nic->phy_dev->priv_dev, msg, len, NULL,
				    NULL);
}