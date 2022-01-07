
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RPMSG_DEV_MAX ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int ,char*) ;
 int class_create (int ,char*) ;
 int class_destroy (int ) ;
 int pr_err (char*) ;
 int register_rpmsg_driver (int *) ;
 int rpmsg_chrdev_driver ;
 int rpmsg_class ;
 int rpmsg_major ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static int rpmsg_char_init(void)
{
 int ret;

 ret = alloc_chrdev_region(&rpmsg_major, 0, RPMSG_DEV_MAX, "rpmsg");
 if (ret < 0) {
  pr_err("rpmsg: failed to allocate char dev region\n");
  return ret;
 }

 rpmsg_class = class_create(THIS_MODULE, "rpmsg");
 if (IS_ERR(rpmsg_class)) {
  pr_err("failed to create rpmsg class\n");
  unregister_chrdev_region(rpmsg_major, RPMSG_DEV_MAX);
  return PTR_ERR(rpmsg_class);
 }

 ret = register_rpmsg_driver(&rpmsg_chrdev_driver);
 if (ret < 0) {
  pr_err("rpmsgchr: failed to register rpmsg driver\n");
  class_destroy(rpmsg_class);
  unregister_chrdev_region(rpmsg_major, RPMSG_DEV_MAX);
 }

 return ret;
}
