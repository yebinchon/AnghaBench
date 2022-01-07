
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wilc {TYPE_1__* hif_func; } ;
struct TYPE_2__ {int (* hif_read_reg ) (struct wilc*,int,int*) ;} ;


 int is_wilc1000 (int) ;
 int stub1 (struct wilc*,int,int*) ;
 int stub2 (struct wilc*,int,int*) ;

u32 wilc_get_chipid(struct wilc *wilc, bool update)
{
 static u32 chipid;
 u32 tempchipid = 0;
 u32 rfrevid = 0;

 if (chipid == 0 || update) {
  wilc->hif_func->hif_read_reg(wilc, 0x1000, &tempchipid);
  wilc->hif_func->hif_read_reg(wilc, 0x13f4, &rfrevid);
  if (!is_wilc1000(tempchipid)) {
   chipid = 0;
   return chipid;
  }
  if (tempchipid == 0x1002a0) {
   if (rfrevid != 0x1)
    tempchipid = 0x1002a1;
  } else if (tempchipid == 0x1002b0) {
   if (rfrevid == 0x4)
    tempchipid = 0x1002b1;
   else if (rfrevid != 0x3)
    tempchipid = 0x1002b2;
  }

  chipid = tempchipid;
 }
 return chipid;
}
