
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {int OutEpNumber; } ;


 int _ConfigNormalChipOutEP_8188E (struct adapter*,int) ;
 int hal_mapping_out_pipe (struct adapter*,int) ;

__attribute__((used)) static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPipe, u8 NumOutPipe)
{
 bool result = 0;

 _ConfigNormalChipOutEP_8188E(adapt, NumOutPipe);


 if (adapt->HalData->OutEpNumber == 1) {
  if (NumInPipe != 1)
   return result;
 }



 result = hal_mapping_out_pipe(adapt, NumOutPipe);

 return result;
}
