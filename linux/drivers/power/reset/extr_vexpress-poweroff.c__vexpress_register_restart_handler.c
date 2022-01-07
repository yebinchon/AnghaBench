
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int dev_attr_active ;
 int dev_err (struct device*,char*,int) ;
 int device_create_file (struct device*,int *) ;
 int register_restart_handler (int *) ;
 struct device* vexpress_restart_device ;
 int vexpress_restart_nb ;
 int vexpress_restart_nb_refcnt ;

__attribute__((used)) static int _vexpress_register_restart_handler(struct device *dev)
{
 int err;

 vexpress_restart_device = dev;
 if (atomic_inc_return(&vexpress_restart_nb_refcnt) == 1) {
  err = register_restart_handler(&vexpress_restart_nb);
  if (err) {
   dev_err(dev, "cannot register restart handler (err=%d)\n", err);
   atomic_dec(&vexpress_restart_nb_refcnt);
   return err;
  }
 }
 device_create_file(dev, &dev_attr_active);

 return 0;
}
