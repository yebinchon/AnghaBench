
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int private_data; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int EBADFD ;
 int dev_err (int *,char*,int ) ;
 int file_inode (struct file*) ;
 int iminor (int ) ;
 TYPE_2__ vsoc_dev ;
 int vsoc_validate_inode (int ) ;

inline int vsoc_validate_filep(struct file *filp)
{
 int ret = vsoc_validate_inode(file_inode(filp));

 if (ret)
  return ret;
 if (!filp->private_data) {
  dev_err(&vsoc_dev.dev->dev,
   "No private data on fd, region %d\n",
   iminor(file_inode(filp)));
  return -EBADFD;
 }
 return 0;
}
