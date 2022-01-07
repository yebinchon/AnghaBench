
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dev_t ;
struct TYPE_6__ {int owner; } ;
struct TYPE_5__ {int dev; TYPE_2__ cdev; } ;


 int DEV_NAME ;
 scalar_t__ IS_ERR (int ) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int MPORT ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int cdev_add (TYPE_2__*,int ,int) ;
 int cdev_del (TYPE_2__*) ;
 int cdev_init (TYPE_2__*,int *) ;
 int dev_class ;
 int device_create (int ,int *,int ,int *,int ) ;
 TYPE_1__ riocm_cdev ;
 int riocm_cdev_fops ;
 int riocm_debug (int ,char*,int ,int ,int ) ;
 int riocm_error (char*,int) ;

__attribute__((used)) static int riocm_cdev_add(dev_t devno)
{
 int ret;

 cdev_init(&riocm_cdev.cdev, &riocm_cdev_fops);
 riocm_cdev.cdev.owner = THIS_MODULE;
 ret = cdev_add(&riocm_cdev.cdev, devno, 1);
 if (ret < 0) {
  riocm_error("Cannot register a device with error %d", ret);
  return ret;
 }

 riocm_cdev.dev = device_create(dev_class, ((void*)0), devno, ((void*)0), DEV_NAME);
 if (IS_ERR(riocm_cdev.dev)) {
  cdev_del(&riocm_cdev.cdev);
  return PTR_ERR(riocm_cdev.dev);
 }

 riocm_debug(MPORT, "Added %s cdev(%d:%d)",
      DEV_NAME, MAJOR(devno), MINOR(devno));

 return 0;
}
