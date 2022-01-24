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
typedef  int u8 ;
typedef  int u16 ;
struct mbo {int* virt_address; } ;
struct dim2_hdm {int link_state; int /*<<< orphan*/  netinfo_waitq; int /*<<< orphan*/  deliver_netinfo; int /*<<< orphan*/  mac_addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dim2_hdm *dev, struct mbo *mbo)
{
	u8 *data = mbo->virt_address;

	FUNC1("Node Address: 0x%03x\n", (u16)data[16] << 8 | data[17]);
	dev->link_state = data[18];
	FUNC1("NIState: %d\n", dev->link_state);
	FUNC0(dev->mac_addrs, data + 19, 6);
	dev->deliver_netinfo++;
	FUNC2(&dev->netinfo_waitq);
}