
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct intf_hdl {int dummy; } ;
struct TYPE_3__ {struct intf_hdl intf; } ;
struct adapter {TYPE_1__ iopriv; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ bFwCurrentInPSMode; } ;


 int HW_VAR_APFM_ON_MAC ;
 int HalSdioGetCmdAddr8723BSdio (struct adapter*,int ,int ,int *) ;
 int SDIO_LOCAL_DEVICE_ID ;
 TYPE_2__* adapter_to_pwrctl (struct adapter*) ;
 int le32_to_cpu (int ) ;
 int rtw_hal_get_hwreg (struct adapter*,int ,int *) ;
 int sd_cmd52_read (struct intf_hdl*,int ,int,int *) ;
 int sd_read32 (struct intf_hdl*,int ,int *) ;

__attribute__((used)) static u32 SdioLocalCmd53Read4Byte(struct adapter *adapter, u32 addr)
{

 u8 mac_pwr_ctrl_on;
 u32 val = 0;
 struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 __le32 le_tmp;

 HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 if (!mac_pwr_ctrl_on || adapter_to_pwrctl(adapter)->bFwCurrentInPSMode) {
  sd_cmd52_read(intfhdl, addr, 4, (u8 *)&le_tmp);
  val = le32_to_cpu(le_tmp);
 } else {
  val = sd_read32(intfhdl, addr, ((void*)0));
 }
 return val;
}
