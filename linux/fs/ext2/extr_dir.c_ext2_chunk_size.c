
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_blocksize; } ;



__attribute__((used)) static inline unsigned ext2_chunk_size(struct inode *inode)
{
 return inode->i_sb->s_blocksize;
}
