
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct ffs_epfile* i_private; } ;
struct file {int dummy; } ;
struct ffs_epfile {int ffs; } ;


 int ENTER () ;
 int __ffs_epfile_read_buffer_free (struct ffs_epfile*) ;
 int ffs_data_closed (int ) ;

__attribute__((used)) static int
ffs_epfile_release(struct inode *inode, struct file *file)
{
 struct ffs_epfile *epfile = inode->i_private;

 ENTER();

 __ffs_epfile_read_buffer_free(epfile);
 ffs_data_closed(epfile->ffs);

 return 0;
}
