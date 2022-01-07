
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adfs_dir {int pos; } ;


 unsigned int ADFS_NUM_DIR_ENTRIES ;
 int ENOENT ;

__attribute__((used)) static int
adfs_f_setpos(struct adfs_dir *dir, unsigned int fpos)
{
 if (fpos >= ADFS_NUM_DIR_ENTRIES)
  return -ENOENT;

 dir->pos = 5 + fpos * 26;
 return 0;
}
