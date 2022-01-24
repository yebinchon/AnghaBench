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

/* Variables and functions */
 int /*<<< orphan*/  gdm_lte_macaddr ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(u8 *mac_address)
{
	/* if zero address or multicast bit set, restore the default value */
	if (FUNC0(mac_address) || (mac_address[0] & 0x01)) {
		FUNC2("MAC invalid, restoring default\n");
		FUNC1(mac_address, gdm_lte_macaddr, 6);
	}
}