
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cramfs_inode {int offset; int mode; int size; } ;




 int S_IFMT ;


__attribute__((used)) static unsigned long cramino(const struct cramfs_inode *cino, unsigned int offset)
{
 if (!cino->offset)
  return offset + 1;
 if (!cino->size)
  return offset + 1;






 switch (cino->mode & S_IFMT) {
 case 128:
 case 130:
 case 129:
  return cino->offset << 2;
 default:
  break;
 }
 return offset + 1;
}
