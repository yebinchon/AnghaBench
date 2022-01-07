
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int dummy; } ;
struct omapfb_caps {int ctrl; int plane_color; int wnd_color; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int OMAPFB_PLANE_NUM ;
 size_t PAGE_SIZE ;
 struct omapfb_device* dev_get_drvdata (struct device*) ;
 int omapfb_get_caps (struct omapfb_device*,int,struct omapfb_caps*) ;
 scalar_t__ snprintf (char*,size_t,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t omapfb_show_caps_num(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct omapfb_device *fbdev = dev_get_drvdata(dev);
 int plane;
 size_t size;
 struct omapfb_caps caps;

 plane = 0;
 size = 0;
 while (size < PAGE_SIZE && plane < OMAPFB_PLANE_NUM) {
  omapfb_get_caps(fbdev, plane, &caps);
  size += snprintf(&buf[size], PAGE_SIZE - size,
   "plane#%d %#010x %#010x %#010x\n",
   plane, caps.ctrl, caps.plane_color, caps.wnd_color);
  plane++;
 }
 return size;
}
