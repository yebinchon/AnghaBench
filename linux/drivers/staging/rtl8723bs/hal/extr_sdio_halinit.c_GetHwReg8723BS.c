
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int GetHwReg8723B (struct adapter*,int,int*) ;


 int SDIO_LOCAL_BASE ;
 int SDIO_REG_HCPWM1_8723B ;
 int rtw_read16 (struct adapter*,int) ;
 int rtw_read8 (struct adapter*,int) ;

__attribute__((used)) static void GetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
{
 switch (variable) {
 case 129:
  *val = rtw_read8(padapter, SDIO_LOCAL_BASE | SDIO_REG_HCPWM1_8723B);
  break;

 case 128:
  {

   *((u16 *)val) = rtw_read16(padapter, 0x88);
  }
  break;
 default:
  GetHwReg8723B(padapter, variable, val);
  break;
 }
}
