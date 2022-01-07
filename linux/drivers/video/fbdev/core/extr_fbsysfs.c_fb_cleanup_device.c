
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int class_flag; int dev; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int FB_SYSFS_FLAG_ATTR ;
 int * device_attrs ;
 int device_remove_file (int ,int *) ;

void fb_cleanup_device(struct fb_info *fb_info)
{
 unsigned int i;

 if (fb_info->class_flag & FB_SYSFS_FLAG_ATTR) {
  for (i = 0; i < ARRAY_SIZE(device_attrs); i++)
   device_remove_file(fb_info->dev, &device_attrs[i]);

  fb_info->class_flag &= ~FB_SYSFS_FLAG_ATTR;
 }
}
