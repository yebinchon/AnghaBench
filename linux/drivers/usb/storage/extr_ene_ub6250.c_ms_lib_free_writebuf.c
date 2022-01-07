
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {int * blkext; int * blkpag; scalar_t__ wrtblk; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;


 int kfree (int *) ;
 int ms_lib_clear_pagemap (struct ene_ub6250_info*) ;

__attribute__((used)) static void ms_lib_free_writebuf(struct us_data *us)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 info->MS_Lib.wrtblk = (u16)-1;



 ms_lib_clear_pagemap(info);

 if (info->MS_Lib.blkpag) {
  kfree(info->MS_Lib.blkpag);
  info->MS_Lib.blkpag = ((void*)0);
 }

 if (info->MS_Lib.blkext) {
  kfree(info->MS_Lib.blkext);
  info->MS_Lib.blkext = ((void*)0);
 }
}
