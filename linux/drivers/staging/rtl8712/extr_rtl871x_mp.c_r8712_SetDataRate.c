
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int curr_rateidx; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int RF_PATH_A ;
 int RF_SYN_G2 ;
 int r8712_rf_reg_write (struct _adapter*,int ,int ,int) ;

void r8712_SetDataRate(struct _adapter *pAdapter)
{
 u8 path = RF_PATH_A;
 u8 offset = RF_SYN_G2;
 u32 value;

 value = (pAdapter->mppriv.curr_rateidx < 4) ? 0x4440 : 0xF200;
 r8712_rf_reg_write(pAdapter, path, offset, value);
}
