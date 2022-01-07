
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


 size_t EEPROM_ChannelPlan_8723B ;
 int Hal_ChannelPlanToRegulation (struct adapter*,int ) ;
 int RT_CHANNEL_DOMAIN_WORLD_NULL ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;
 int hal_com_config_channel_plan (struct adapter*,int,int ,int ,int) ;

void Hal_EfuseParseChnlPlan_8723B(
 struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail
)
{
 padapter->mlmepriv.ChannelPlan = hal_com_config_channel_plan(
  padapter,
  hwinfo ? hwinfo[EEPROM_ChannelPlan_8723B] : 0xFF,
  padapter->registrypriv.channel_plan,
  RT_CHANNEL_DOMAIN_WORLD_NULL,
  AutoLoadFail
 );

 Hal_ChannelPlanToRegulation(padapter, padapter->mlmepriv.ChannelPlan);

 RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("EEPROM ChannelPlan = 0x%02x\n", padapter->mlmepriv.ChannelPlan));
}
