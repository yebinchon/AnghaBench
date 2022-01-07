
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int wireless_mode; } ;
struct adapter {TYPE_1__ registrypriv; } ;


 int DBG_871X (char*) ;
 int IsSupported24G (int ) ;

bool HAL_IsLegalChannel(struct adapter *Adapter, u32 Channel)
{
 bool bLegalChannel = 1;

 if ((Channel <= 14) && (Channel >= 1)) {
  if (IsSupported24G(Adapter->registrypriv.wireless_mode) == 0) {
   bLegalChannel = 0;
   DBG_871X("(Channel <= 14) && (Channel >= 1) but wireless_mode do not support 2.4G\n");
  }
 } else {
  bLegalChannel = 0;
  DBG_871X("Channel is Invalid !!!\n");
 }

 return bLegalChannel;
}
