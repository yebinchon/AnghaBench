
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTXPWRTRACK_CFG ;
typedef int PDM_ODM_T ;


 int ConfigureTxpowerTrack_8723B (int ) ;

void ConfigureTxpowerTrack(PDM_ODM_T pDM_Odm, PTXPWRTRACK_CFG pConfig)
{
 ConfigureTxpowerTrack_8723B(pConfig);
}
