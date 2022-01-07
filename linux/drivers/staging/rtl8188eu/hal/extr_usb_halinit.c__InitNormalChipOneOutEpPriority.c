
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {int OutEpQueueSel; } ;


 int QUEUE_HIGH ;
 int QUEUE_LOW ;
 int QUEUE_NORMAL ;



 int _InitNormalChipRegPriority (struct adapter*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void _InitNormalChipOneOutEpPriority(struct adapter *Adapter)
{
 u16 value = 0;

 switch (Adapter->HalData->OutEpQueueSel) {
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
 _InitNormalChipRegPriority(Adapter, value, value, value, value,
       value, value);
}
