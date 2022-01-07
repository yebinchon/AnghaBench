
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_data {int dummy; } ;


 int gfs_driver ;
 int gfs_registered ;
 int missing_funcs ;
 int usb_composite_unregister (int *) ;

__attribute__((used)) static void functionfs_closed_callback(struct ffs_data *ffs)
{
 missing_funcs++;

 if (gfs_registered)
  usb_composite_unregister(&gfs_driver);
 gfs_registered = 0;
}
