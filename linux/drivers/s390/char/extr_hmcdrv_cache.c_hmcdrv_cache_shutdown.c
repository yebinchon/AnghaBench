
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ofs; scalar_t__ len; int fsize; int id; int * content; } ;


 int HMCDRV_FTP_NOOP ;
 int LLONG_MAX ;
 int free_pages (unsigned long,int ) ;
 TYPE_1__ hmcdrv_cache_file ;
 int hmcdrv_cache_order ;

void hmcdrv_cache_shutdown(void)
{
 if (hmcdrv_cache_file.content) {
  free_pages((unsigned long) hmcdrv_cache_file.content,
      hmcdrv_cache_order);
  hmcdrv_cache_file.content = ((void*)0);
 }

 hmcdrv_cache_file.id = HMCDRV_FTP_NOOP;
 hmcdrv_cache_file.fsize = LLONG_MAX;
 hmcdrv_cache_file.ofs = -1;
 hmcdrv_cache_file.len = 0;
}
