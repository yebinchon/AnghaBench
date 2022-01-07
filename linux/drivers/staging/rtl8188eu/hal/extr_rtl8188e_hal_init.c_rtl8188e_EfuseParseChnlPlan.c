
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ChannelPlan; } ;
struct TYPE_3__ {int channel_plan; } ;
struct adapter {TYPE_2__ mlmepriv; TYPE_1__ registrypriv; } ;


 int DBG_88E (char*,int ) ;
 size_t EEPROM_ChannelPlan_88E ;
 int RT_CHANNEL_DOMAIN_WORLD_WIDE_13 ;
 int hal_com_get_channel_plan (int,int ,int ,int) ;

void rtl8188e_EfuseParseChnlPlan(struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail)
{
 padapter->mlmepriv.ChannelPlan =
   hal_com_get_channel_plan(hwinfo ? hwinfo[EEPROM_ChannelPlan_88E] : 0xFF,
       padapter->registrypriv.channel_plan,
       RT_CHANNEL_DOMAIN_WORLD_WIDE_13, AutoLoadFail);

 DBG_88E("mlmepriv.ChannelPlan = 0x%02x\n", padapter->mlmepriv.ChannelPlan);
}
