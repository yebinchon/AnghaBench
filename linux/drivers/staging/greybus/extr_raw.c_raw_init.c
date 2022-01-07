
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 scalar_t__ IS_ERR (int ) ;
 int MAJOR (int ) ;
 int NUM_MINORS ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int ,char*) ;
 int class_create (int ,char*) ;
 int class_destroy (int ) ;
 int gb_raw_driver ;
 int greybus_register (int *) ;
 int raw_class ;
 int raw_major ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static int raw_init(void)
{
 dev_t dev;
 int retval;

 raw_class = class_create(THIS_MODULE, "gb_raw");
 if (IS_ERR(raw_class)) {
  retval = PTR_ERR(raw_class);
  goto error_class;
 }

 retval = alloc_chrdev_region(&dev, 0, NUM_MINORS, "gb_raw");
 if (retval < 0)
  goto error_chrdev;

 raw_major = MAJOR(dev);

 retval = greybus_register(&gb_raw_driver);
 if (retval)
  goto error_gb;

 return 0;

error_gb:
 unregister_chrdev_region(dev, NUM_MINORS);
error_chrdev:
 class_destroy(raw_class);
error_class:
 return retval;
}
