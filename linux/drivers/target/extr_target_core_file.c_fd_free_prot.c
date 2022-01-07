
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct fd_dev {int * fd_prot_file; } ;


 struct fd_dev* FD_DEV (struct se_device*) ;
 int filp_close (int *,int *) ;

__attribute__((used)) static void fd_free_prot(struct se_device *dev)
{
 struct fd_dev *fd_dev = FD_DEV(dev);

 if (!fd_dev->fd_prot_file)
  return;

 filp_close(fd_dev->fd_prot_file, ((void*)0));
 fd_dev->fd_prot_file = ((void*)0);
}
