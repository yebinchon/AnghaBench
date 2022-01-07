
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_data {int dummy; } ;


 int EBUSY ;
 int gfs_driver ;
 int gfs_registered ;
 scalar_t__ missing_funcs ;
 scalar_t__ unlikely (int) ;
 int usb_composite_probe (int *) ;

__attribute__((used)) static int functionfs_ready_callback(struct ffs_data *ffs)
{
 int ret = 0;

 if (--missing_funcs)
  return 0;

 if (gfs_registered)
  return -EBUSY;

 gfs_registered = 1;

 ret = usb_composite_probe(&gfs_driver);
 if (unlikely(ret < 0)) {
  ++missing_funcs;
  gfs_registered = 0;
 }

 return ret;
}
