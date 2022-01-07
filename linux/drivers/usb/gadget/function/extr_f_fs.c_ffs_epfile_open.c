
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {struct ffs_epfile* i_private; } ;
struct file {struct ffs_epfile* private_data; } ;
struct ffs_epfile {TYPE_1__* ffs; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int ENODEV ;
 int ENTER () ;
 scalar_t__ FFS_ACTIVE ;
 scalar_t__ WARN_ON (int) ;
 int ffs_data_opened (TYPE_1__*) ;

__attribute__((used)) static int
ffs_epfile_open(struct inode *inode, struct file *file)
{
 struct ffs_epfile *epfile = inode->i_private;

 ENTER();

 if (WARN_ON(epfile->ffs->state != FFS_ACTIVE))
  return -ENODEV;

 file->private_data = epfile;
 ffs_data_opened(epfile->ffs);

 return 0;
}
