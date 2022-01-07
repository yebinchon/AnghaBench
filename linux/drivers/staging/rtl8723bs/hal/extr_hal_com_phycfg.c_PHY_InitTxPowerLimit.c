
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct hal_com_data {void****** TxPwrLimit_5G; void****** TxPwrLimit_2_4G; } ;
struct adapter {int dummy; } ;


 size_t CHANNEL_MAX_NUMBER_2G ;
 size_t CHANNEL_MAX_NUMBER_5G ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 size_t MAX_2_4G_BANDWITH_NUM ;
 size_t MAX_5G_BANDWITH_NUM ;
 void* MAX_POWER_INDEX ;
 size_t MAX_RATE_SECTION_NUM ;
 size_t MAX_REGULATION_NUM ;
 size_t MAX_RF_PATH_NUM ;

void PHY_InitTxPowerLimit(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 u8 i, j, k, l, m;



 for (i = 0; i < MAX_REGULATION_NUM; ++i) {
  for (j = 0; j < MAX_2_4G_BANDWITH_NUM; ++j)
   for (k = 0; k < MAX_RATE_SECTION_NUM; ++k)
    for (m = 0; m < CHANNEL_MAX_NUMBER_2G; ++m)
     for (l = 0; l < MAX_RF_PATH_NUM; ++l)
      pHalData->TxPwrLimit_2_4G[i][j][k][m][l] = MAX_POWER_INDEX;
 }

 for (i = 0; i < MAX_REGULATION_NUM; ++i) {
  for (j = 0; j < MAX_5G_BANDWITH_NUM; ++j)
   for (k = 0; k < MAX_RATE_SECTION_NUM; ++k)
    for (m = 0; m < CHANNEL_MAX_NUMBER_5G; ++m)
     for (l = 0; l < MAX_RF_PATH_NUM; ++l)
      pHalData->TxPwrLimit_5G[i][j][k][m][l] = MAX_POWER_INDEX;
 }


}
