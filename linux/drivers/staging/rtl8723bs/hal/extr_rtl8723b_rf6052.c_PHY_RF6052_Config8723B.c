
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {scalar_t__ rf_type; int NumTotalRFPath; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ RF_1T1R ;
 int phy_RF6052_Config_ParaFile (struct adapter*) ;

int PHY_RF6052_Config8723B(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);





 if (pHalData->rf_type == RF_1T1R)
  pHalData->NumTotalRFPath = 1;
 else
  pHalData->NumTotalRFPath = 2;




 return phy_RF6052_Config_ParaFile(Adapter);

}
