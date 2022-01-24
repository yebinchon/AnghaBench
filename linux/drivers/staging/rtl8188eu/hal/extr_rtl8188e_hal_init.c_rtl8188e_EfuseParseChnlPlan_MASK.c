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
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/  ChannelPlan; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel_plan; } ;
struct adapter {TYPE_2__ mlmepriv; TYPE_1__ registrypriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t EEPROM_ChannelPlan_88E ; 
 int /*<<< orphan*/  RT_CHANNEL_DOMAIN_WORLD_WIDE_13 ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail)
{
	padapter->mlmepriv.ChannelPlan =
		 FUNC1(hwinfo ? hwinfo[EEPROM_ChannelPlan_88E] : 0xFF,
					  padapter->registrypriv.channel_plan,
					  RT_CHANNEL_DOMAIN_WORLD_WIDE_13, AutoLoadFail);

	FUNC0("mlmepriv.ChannelPlan = 0x%02x\n", padapter->mlmepriv.ChannelPlan);
}