
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int attributes; int attributes_mask; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int datalayout; } ;


 TYPE_1__* EROFS_I (struct inode* const) ;
 int STATX_ATTR_COMPRESSED ;
 int STATX_ATTR_IMMUTABLE ;
 struct inode* d_inode (int ) ;
 scalar_t__ erofs_inode_is_data_compressed (int ) ;
 int generic_fillattr (struct inode* const,struct kstat*) ;

int erofs_getattr(const struct path *path, struct kstat *stat,
    u32 request_mask, unsigned int query_flags)
{
 struct inode *const inode = d_inode(path->dentry);

 if (erofs_inode_is_data_compressed(EROFS_I(inode)->datalayout))
  stat->attributes |= STATX_ATTR_COMPRESSED;

 stat->attributes |= STATX_ATTR_IMMUTABLE;
 stat->attributes_mask |= (STATX_ATTR_COMPRESSED |
      STATX_ATTR_IMMUTABLE);

 generic_fillattr(inode, stat);
 return 0;
}
