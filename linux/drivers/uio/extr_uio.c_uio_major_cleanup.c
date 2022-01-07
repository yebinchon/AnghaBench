
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (int ,int ) ;
 int UIO_MAX_DEVICES ;
 int cdev_del (int ) ;
 int uio_cdev ;
 int uio_major ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static void uio_major_cleanup(void)
{
 unregister_chrdev_region(MKDEV(uio_major, 0), UIO_MAX_DEVICES);
 cdev_del(uio_cdev);
}
