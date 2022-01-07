
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
typedef int s32 ;
struct TYPE_4__ {scalar_t__ bFwCurrentInPSMode; } ;


 int HW_VAR_APFM_ON_MAC ;
 int HalSdioGetCmdAddr8723BSdio (struct adapter*,int ,int ,int *) ;
 int RND4 (int ) ;
 int SDIO_LOCAL_DEVICE_ID ;
 TYPE_2__* adapter_to_pwrctl (struct adapter*) ;
 int kfree (int *) ;
 int memcpy (int *,int *,int ) ;
 int rtw_hal_get_hwreg (struct adapter*,int ,int *) ;
 int * rtw_malloc (int ) ;
 int sd_cmd52_read (struct intf_hdl*,int ,int ,int *) ;
 int sd_read (struct intf_hdl*,int ,int ,int *) ;

s32 sdio_local_read(
 struct adapter *adapter,
 u32 addr,
 u32 cnt,
 u8 *buf
)
{
 struct intf_hdl *intfhdl;
 u8 mac_pwr_ctrl_on;
 s32 err;
 u8 *tmpbuf;
 u32 n;

 intfhdl = &adapter->iopriv.intf;

 HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);

 rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 if (
  (!mac_pwr_ctrl_on) ||
  (adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
 )
  return sd_cmd52_read(intfhdl, addr, cnt, buf);

 n = RND4(cnt);
 tmpbuf = rtw_malloc(n);
 if (!tmpbuf)
  return -1;

 err = sd_read(intfhdl, addr, n, tmpbuf);
 if (!err)
  memcpy(buf, tmpbuf, cnt);

 kfree(tmpbuf);

 return err;
}
