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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 scalar_t__* gdm_lte_macaddr ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC3(u8 *dev_addr, u8 *nic_src, u8 *nic_dest,
			     u8 *mac_address, u8 index)
{
	/* Form the dev_addr */
	if (!mac_address)
		FUNC1(dev_addr, gdm_lte_macaddr);
	else
		FUNC1(dev_addr, mac_address);

	/* The last byte of the mac address
	 * should be less than or equal to 0xFC
	 */
	dev_addr[ETH_ALEN - 1] += index;

	/* Create random nic src and copy the first
	 * 3 bytes to be the same as dev_addr
	 */
	FUNC0(nic_src);
	FUNC2(nic_src, dev_addr, 3);

	/* Copy the nic_dest from dev_addr*/
	FUNC1(nic_dest, dev_addr);
}