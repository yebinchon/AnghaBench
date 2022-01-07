
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb2_device {int num_fbs; TYPE_1__** fbs; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int DBG (char*) ;
 int device_remove_file (int ,int *) ;
 int * omapfb_attrs ;

void omapfb_remove_sysfs(struct omapfb2_device *fbdev)
{
 int i, t;

 DBG("remove sysfs for fbs\n");
 for (i = 0; i < fbdev->num_fbs; i++) {
  for (t = 0; t < ARRAY_SIZE(omapfb_attrs); t++)
   device_remove_file(fbdev->fbs[i]->dev,
     &omapfb_attrs[t]);
 }
}
