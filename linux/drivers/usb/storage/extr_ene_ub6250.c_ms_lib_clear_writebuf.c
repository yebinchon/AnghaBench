
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_4__ {int PagesPerBlock; int BytesPerSector; TYPE_1__* blkext; scalar_t__ blkpag; scalar_t__ wrtblk; } ;
struct ene_ub6250_info {TYPE_2__ MS_Lib; } ;
struct TYPE_3__ {int logadr; int mngflg; int ovrflg; int status1; } ;


 int MS_LB_NOT_USED ;
 int MS_REG_MNG_DEFAULT ;
 int MS_REG_OVR_DEFAULT ;
 int MS_REG_ST1_DEFAULT ;
 int memset (scalar_t__,int,int) ;
 int ms_lib_clear_pagemap (struct ene_ub6250_info*) ;

__attribute__((used)) static void ms_lib_clear_writebuf(struct us_data *us)
{
 int i;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 info->MS_Lib.wrtblk = (u16)-1;
 ms_lib_clear_pagemap(info);

 if (info->MS_Lib.blkpag)
  memset(info->MS_Lib.blkpag, 0xff, info->MS_Lib.PagesPerBlock * info->MS_Lib.BytesPerSector);

 if (info->MS_Lib.blkext) {
  for (i = 0; i < info->MS_Lib.PagesPerBlock; i++) {
   info->MS_Lib.blkext[i].status1 = MS_REG_ST1_DEFAULT;
   info->MS_Lib.blkext[i].ovrflg = MS_REG_OVR_DEFAULT;
   info->MS_Lib.blkext[i].mngflg = MS_REG_MNG_DEFAULT;
   info->MS_Lib.blkext[i].logadr = MS_LB_NOT_USED;
  }
 }
}
