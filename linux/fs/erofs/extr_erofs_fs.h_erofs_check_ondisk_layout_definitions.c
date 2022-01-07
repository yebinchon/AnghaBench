
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_vle_decompressed_index {int dummy; } ;
struct z_erofs_map_header {int dummy; } ;
struct erofs_xattr_ibody_header {int dummy; } ;
struct erofs_xattr_entry {int dummy; } ;
struct erofs_super_block {int dummy; } ;
struct erofs_inode_extended {int dummy; } ;
struct erofs_inode_compact {int dummy; } ;
struct erofs_dirent {int dummy; } ;


 int BIT (int ) ;
 int BUILD_BUG_ON (int) ;
 int Z_EROFS_VLE_CLUSTER_TYPE_MAX ;
 int Z_EROFS_VLE_DI_CLUSTER_TYPE_BITS ;

__attribute__((used)) static inline void erofs_check_ondisk_layout_definitions(void)
{
 BUILD_BUG_ON(sizeof(struct erofs_super_block) != 128);
 BUILD_BUG_ON(sizeof(struct erofs_inode_compact) != 32);
 BUILD_BUG_ON(sizeof(struct erofs_inode_extended) != 64);
 BUILD_BUG_ON(sizeof(struct erofs_xattr_ibody_header) != 12);
 BUILD_BUG_ON(sizeof(struct erofs_xattr_entry) != 4);
 BUILD_BUG_ON(sizeof(struct z_erofs_map_header) != 8);
 BUILD_BUG_ON(sizeof(struct z_erofs_vle_decompressed_index) != 8);
 BUILD_BUG_ON(sizeof(struct erofs_dirent) != 12);

 BUILD_BUG_ON(BIT(Z_EROFS_VLE_DI_CLUSTER_TYPE_BITS) <
       Z_EROFS_VLE_CLUSTER_TYPE_MAX - 1);
}
