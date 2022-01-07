
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 struct fb_info** _au1200fb_infos ;
 int device_count ;
 int printk (char*) ;

__attribute__((used)) static int fbinfo2index (struct fb_info *fb_info)
{
 int i;

 for (i = 0; i < device_count; ++i) {
  if (fb_info == _au1200fb_infos[i])
   return i;
 }
 printk("au1200fb: ERROR: fbinfo2index failed!\n");
 return -1;
}
