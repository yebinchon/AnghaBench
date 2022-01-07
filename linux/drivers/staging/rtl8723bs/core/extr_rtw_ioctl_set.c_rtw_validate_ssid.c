
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ndis_802_11_ssid {int SsidLength; int* Ssid; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_rtl871x_ioctl_set_c_ ;
 size_t i ;

u8 rtw_validate_ssid(struct ndis_802_11_ssid *ssid)
{
 u8 ret = 1;

 if (ssid->SsidLength > 32) {
  RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("ssid length >32\n"));
  ret = 0;
  goto exit;
 }
exit:
 return ret;
}
