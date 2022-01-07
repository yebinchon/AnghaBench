
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 int ENOMEM ;
 int OCXLFLASH_FS_MAGIC ;
 scalar_t__ init_pseudo (struct fs_context*,int ) ;

__attribute__((used)) static int ocxlflash_fs_init_fs_context(struct fs_context *fc)
{
 return init_pseudo(fc, OCXLFLASH_FS_MAGIC) ? 0 : -ENOMEM;
}
