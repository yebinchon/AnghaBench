
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hal_com_data {int OutEpQueueSel; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int QUEUE_HIGH ;
 int QUEUE_LOW ;
 int QUEUE_NORMAL ;



 int _InitNormalChipRegPriority (struct adapter*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void _InitNormalChipOneOutEpPriority(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);

 u16 value = 0;
 switch (pHalData->OutEpQueueSel) {
 case 130:
  value = QUEUE_HIGH;
  break;
 case 129:
  value = QUEUE_LOW;
  break;
 case 128:
  value = QUEUE_NORMAL;
  break;
 default:

  break;
 }

 _InitNormalChipRegPriority(
  Adapter, value, value, value, value, value, value
 );

}
