
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ FwDebugBLEDvalue_P; scalar_t__ FwDebugBLEDflag_P; } ;
typedef TYPE_1__ adpt_hba ;


 int readb (scalar_t__) ;

__attribute__((used)) static u8 adpt_read_blink_led(adpt_hba* host)
{
 if (host->FwDebugBLEDflag_P) {
  if( readb(host->FwDebugBLEDflag_P) == 0xbc ){
   return readb(host->FwDebugBLEDvalue_P);
  }
 }
 return 0;
}
