
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erofs_sb_info {int dummy; } ;
typedef int __u32 ;


 unsigned int EROFS_BLKSIZ ;

__attribute__((used)) static inline unsigned int xattrblock_offset(struct erofs_sb_info *sbi,
          unsigned int xattr_id)
{
 return (xattr_id * sizeof(__u32)) % EROFS_BLKSIZ;
}
