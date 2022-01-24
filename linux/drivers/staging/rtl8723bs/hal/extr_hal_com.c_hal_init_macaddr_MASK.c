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
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;
struct adapter {TYPE_1__ eeprompriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_MAC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct adapter *adapter)
{
	FUNC0(adapter, HW_VAR_MAC_ADDR, adapter->eeprompriv.mac_addr);
}