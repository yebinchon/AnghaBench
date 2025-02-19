
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct ms_lib_type_extdat {int dummy; } ;
struct TYPE_2__ {int BytesPerSector; int * blkext; int * blkpag; int PagesPerBlock; scalar_t__ wrtblk; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;


 int GFP_KERNEL ;
 void* kmalloc_array (int ,int,int ) ;
 int ms_lib_clear_writebuf (struct us_data*) ;
 int ms_lib_free_writebuf (struct us_data*) ;

__attribute__((used)) static int ms_lib_alloc_writebuf(struct us_data *us)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 info->MS_Lib.wrtblk = (u16)-1;

 info->MS_Lib.blkpag = kmalloc_array(info->MS_Lib.PagesPerBlock,
         info->MS_Lib.BytesPerSector,
         GFP_KERNEL);
 info->MS_Lib.blkext = kmalloc_array(info->MS_Lib.PagesPerBlock,
         sizeof(struct ms_lib_type_extdat),
         GFP_KERNEL);

 if ((info->MS_Lib.blkpag == ((void*)0)) || (info->MS_Lib.blkext == ((void*)0))) {
  ms_lib_free_writebuf(us);
  return (u32)-1;
 }

 ms_lib_clear_writebuf(us);

 return 0;
}
