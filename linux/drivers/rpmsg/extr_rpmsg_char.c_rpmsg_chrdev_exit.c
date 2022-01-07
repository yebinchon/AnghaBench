
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPMSG_DEV_MAX ;
 int class_destroy (int ) ;
 int rpmsg_chrdev_driver ;
 int rpmsg_class ;
 int rpmsg_major ;
 int unregister_chrdev_region (int ,int ) ;
 int unregister_rpmsg_driver (int *) ;

__attribute__((used)) static void rpmsg_chrdev_exit(void)
{
 unregister_rpmsg_driver(&rpmsg_chrdev_driver);
 class_destroy(rpmsg_class);
 unregister_chrdev_region(rpmsg_major, RPMSG_DEV_MAX);
}
