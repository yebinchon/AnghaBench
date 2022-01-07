
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int rf_type; int rf_chip; } ;
struct adapter {int dummy; } ;


 int DBG_8192C (char*) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RF_1T1R ;
 int RF_6052 ;
 int RF_PSEUDO_11N ;

__attribute__((used)) static void _InitRFType(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);






 pHalData->rf_chip = RF_6052;

 pHalData->rf_type = RF_1T1R;
 DBG_8192C("Set RF Chip ID to RF_6052 and RF type to 1T1R.\n");
}
