
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pwrctrl_priv {scalar_t__ reg_pdnmode; } ;
struct hal_com_data {int pwrdown; } ;
struct adapter {int dummy; } ;


 int BIT4 ;
 int DBG_8192C (char*,int) ;
 int EFUSE_ShadowRead (struct adapter*,int,int,int *) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;

__attribute__((used)) static bool HalDetectPwrDownMode(struct adapter *Adapter)
{
 u8 tmpvalue;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(Adapter);


 EFUSE_ShadowRead(Adapter, 1, 0x7B , (u32 *)&tmpvalue);


 if (tmpvalue & BIT4 && pwrctrlpriv->reg_pdnmode)
  pHalData->pwrdown = 1;
 else
  pHalData->pwrdown = 0;

 DBG_8192C("HalDetectPwrDownMode(): PDN =%d\n", pHalData->pwrdown);

 return pHalData->pwrdown;
}
