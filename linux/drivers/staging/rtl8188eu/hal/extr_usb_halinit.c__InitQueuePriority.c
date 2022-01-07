
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {int OutEpNumber; } ;


 int _InitNormalChipOneOutEpPriority (struct adapter*) ;
 int _InitNormalChipThreeOutEpPriority (struct adapter*) ;
 int _InitNormalChipTwoOutEpPriority (struct adapter*) ;

__attribute__((used)) static void _InitQueuePriority(struct adapter *Adapter)
{
 switch (Adapter->HalData->OutEpNumber) {
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
