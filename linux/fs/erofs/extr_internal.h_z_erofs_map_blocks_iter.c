
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct erofs_map_blocks {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int z_erofs_map_blocks_iter(struct inode *inode,
       struct erofs_map_blocks *map,
       int flags)
{
 return -EOPNOTSUPP;
}
