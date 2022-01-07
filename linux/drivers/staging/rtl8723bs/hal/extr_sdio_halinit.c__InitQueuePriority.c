
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int OutEpNumber; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int _InitNormalChipOneOutEpPriority (struct adapter*) ;
 int _InitNormalChipThreeOutEpPriority (struct adapter*) ;
 int _InitNormalChipTwoOutEpPriority (struct adapter*) ;

__attribute__((used)) static void _InitQueuePriority(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);

 switch (pHalData->OutEpNumber) {
 case 1:
  _InitNormalChipOneOutEpPriority(Adapter);
  break;
 case 2:
  _InitNormalChipTwoOutEpPriority(Adapter);
  break;
 case 3:
  _InitNormalChipThreeOutEpPriority(Adapter);
  break;
 default:

  break;
 }


}
