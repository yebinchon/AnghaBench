
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize_bits; int s_blocksize; } ;
struct adfs_dir {TYPE_1__** bh_fplus; struct super_block* sb; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int memcpy (char*,scalar_t__,unsigned int) ;

__attribute__((used)) static void
dir_memcpy(struct adfs_dir *dir, unsigned int offset, void *to, int len)
{
 struct super_block *sb = dir->sb;
 unsigned int buffer, partial, remainder;

 buffer = offset >> sb->s_blocksize_bits;
 offset &= sb->s_blocksize - 1;

 partial = sb->s_blocksize - offset;

 if (partial >= len)
  memcpy(to, dir->bh_fplus[buffer]->b_data + offset, len);
 else {
  char *c = (char *)to;

  remainder = len - partial;

  memcpy(c,
   dir->bh_fplus[buffer]->b_data + offset,
   partial);

  memcpy(c + partial,
   dir->bh_fplus[buffer + 1]->b_data,
   remainder);
 }
}
