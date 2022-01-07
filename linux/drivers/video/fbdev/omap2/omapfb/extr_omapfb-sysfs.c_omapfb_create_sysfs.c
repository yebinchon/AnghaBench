
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb2_device {int num_fbs; int dev; TYPE_1__** fbs; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int DBG (char*) ;
 int dev_err (int ,char*) ;
 int device_create_file (int ,int *) ;
 int * omapfb_attrs ;

int omapfb_create_sysfs(struct omapfb2_device *fbdev)
{
 int i;
 int r;

 DBG("create sysfs for fbs\n");
 for (i = 0; i < fbdev->num_fbs; i++) {
  int t;
  for (t = 0; t < ARRAY_SIZE(omapfb_attrs); t++) {
   r = device_create_file(fbdev->fbs[i]->dev,
     &omapfb_attrs[t]);

   if (r) {
    dev_err(fbdev->dev, "failed to create sysfs "
      "file\n");
    return r;
   }
  }
 }

 return 0;
}
