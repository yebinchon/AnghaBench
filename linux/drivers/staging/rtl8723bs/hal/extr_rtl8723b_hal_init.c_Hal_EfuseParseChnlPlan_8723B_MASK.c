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
 size_t EEPROM_ChannelPlan_8723B ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_CHANNEL_DOMAIN_WORLD_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_hci_hal_init_c_ ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(
	struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail
)
{
	padapter->mlmepriv.ChannelPlan = FUNC2(
		padapter,
		hwinfo ? hwinfo[EEPROM_ChannelPlan_8723B] : 0xFF,
		padapter->registrypriv.channel_plan,
		RT_CHANNEL_DOMAIN_WORLD_NULL,
		AutoLoadFail
	);

	FUNC0(padapter, padapter->mlmepriv.ChannelPlan);

	FUNC1(_module_hci_hal_init_c_, _drv_notice_, ("EEPROM ChannelPlan = 0x%02x\n", padapter->mlmepriv.ChannelPlan));
}