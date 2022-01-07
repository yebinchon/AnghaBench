
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct erofs_xattr_ibody_header {int dummy; } ;
struct TYPE_2__ {int xattr_shared_count; } ;


 TYPE_1__* EROFS_I (struct inode*) ;

__attribute__((used)) static inline unsigned int inlinexattr_header_size(struct inode *inode)
{
 return sizeof(struct erofs_xattr_ibody_header) +
  sizeof(u32) * EROFS_I(inode)->xattr_shared_count;
}
