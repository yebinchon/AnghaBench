
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erofs_sb_info {int max_sync_decompress_pages; int cache_strategy; } ;


 int EROFS_ZIP_CACHE_READAROUND ;
 int POSIX_ACL ;
 int XATTR_USER ;
 int set_opt (struct erofs_sb_info*,int ) ;

__attribute__((used)) static void erofs_default_options(struct erofs_sb_info *sbi)
{
}
