
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxlflash_context {int * mapping; } ;


 int ocxlflash_fs_cnt ;
 int ocxlflash_vfs_mount ;
 int simple_release_fs (int *,int *) ;

__attribute__((used)) static void ocxlflash_release_mapping(struct ocxlflash_context *ctx)
{
 if (ctx->mapping)
  simple_release_fs(&ocxlflash_vfs_mount, &ocxlflash_fs_cnt);
 ctx->mapping = ((void*)0);
}
