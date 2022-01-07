
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bFwCurrentInPSMode; } ;
struct adapter {TYPE_2__* HalData; TYPE_1__ pwrctrlpriv; } ;
struct TYPE_4__ {scalar_t__ LastHMEBoxNum; } ;



void rtl8188e_InitializeFirmwareVars(struct adapter *padapter)
{

 padapter->pwrctrlpriv.bFwCurrentInPSMode = 0;


 padapter->HalData->LastHMEBoxNum = 0;
}
