
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int rf_chip; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RF_6052 ;
 int RF_PSEUDO_11N ;

__attribute__((used)) static void _ReadRFType(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);




 pHalData->rf_chip = RF_6052;

}
