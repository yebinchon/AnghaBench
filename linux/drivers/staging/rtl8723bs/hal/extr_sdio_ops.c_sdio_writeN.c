
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct intf_hdl {struct adapter* padapter; } ;
struct adapter {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {scalar_t__ bFwCurrentInPSMode; } ;


 int HW_VAR_APFM_ON_MAC ;
 scalar_t__ WLAN_IOREG_DEVICE_ID ;
 int _cvrt2ftaddr (int,scalar_t__*,int*) ;
 TYPE_1__* adapter_to_pwrctl (struct adapter*) ;
 int kfree (scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int rtw_hal_get_hwreg (struct adapter*,int ,scalar_t__*) ;
 scalar_t__* rtw_malloc (int) ;
 int sd_cmd52_write (struct intf_hdl*,int,int,scalar_t__*) ;
 int sd_read (struct intf_hdl*,int,int,scalar_t__*) ;
 int sd_write (struct intf_hdl*,int,int,scalar_t__*) ;

__attribute__((used)) static s32 sdio_writeN(struct intf_hdl *intfhdl, u32 addr, u32 cnt, u8 *buf)
{
 struct adapter *adapter;
 u8 mac_pwr_ctrl_on;
 u8 device_id;
 u16 offset;
 u32 ftaddr;
 u8 shift;
 s32 err;

 adapter = intfhdl->padapter;
 err = 0;

 ftaddr = _cvrt2ftaddr(addr, &device_id, &offset);

 rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 if (
  ((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100)) ||
  (!mac_pwr_ctrl_on) ||
  (adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
 )
  return sd_cmd52_write(intfhdl, ftaddr, cnt, buf);

 shift = ftaddr & 0x3;
 if (shift == 0) {
  err = sd_write(intfhdl, ftaddr, cnt, buf);
 } else {
  u8 *tmpbuf;
  u32 n;

  ftaddr &= ~(u16)0x3;
  n = cnt + shift;
  tmpbuf = rtw_malloc(n);
  if (!tmpbuf)
   return -1;
  err = sd_read(intfhdl, ftaddr, 4, tmpbuf);
  if (err) {
   kfree(tmpbuf);
   return err;
  }
  memcpy(tmpbuf + shift, buf, cnt);
  err = sd_write(intfhdl, ftaddr, n, tmpbuf);
  kfree(tmpbuf);
 }
 return err;
}
