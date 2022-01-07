
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct fd_dev {int fd_dev_id; char* fd_dev_name; int fbd_flags; int fd_dev_size; } ;
typedef int ssize_t ;


 int FDBD_HAS_ASYNC_IO ;
 int FDBD_HAS_BUFFERED_IO_WCE ;
 struct fd_dev* FD_DEV (struct se_device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t fd_show_configfs_dev_params(struct se_device *dev, char *b)
{
 struct fd_dev *fd_dev = FD_DEV(dev);
 ssize_t bl = 0;

 bl = sprintf(b + bl, "TCM FILEIO ID: %u", fd_dev->fd_dev_id);
 bl += sprintf(b + bl, "        File: %s  Size: %llu  Mode: %s Async: %d\n",
  fd_dev->fd_dev_name, fd_dev->fd_dev_size,
  (fd_dev->fbd_flags & FDBD_HAS_BUFFERED_IO_WCE) ?
  "Buffered-WCE" : "O_DSYNC",
  !!(fd_dev->fbd_flags & FDBD_HAS_ASYNC_IO));
 return bl;
}
