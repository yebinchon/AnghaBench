
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct fb_info {int dummy; } ;


 long ENODEV ;
 long do_fb_ioctl (struct fb_info*,unsigned int,unsigned long) ;
 struct fb_info* file_fb_info (struct file*) ;

__attribute__((used)) static long fb_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct fb_info *info = file_fb_info(file);

 if (!info)
  return -ENODEV;
 return do_fb_ioctl(info, cmd, arg);
}
