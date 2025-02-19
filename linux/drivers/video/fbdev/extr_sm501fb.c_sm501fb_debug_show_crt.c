
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SM501_DC_CRT_CONTROL ;
 int SM501_DC_CRT_HWC_BASE ;
 struct sm501fb_info* dev_get_drvdata (struct device*) ;
 int sm501fb_show_regs (struct sm501fb_info*,char*,int ,int) ;

__attribute__((used)) static ssize_t sm501fb_debug_show_crt(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct sm501fb_info *info = dev_get_drvdata(dev);
 char *ptr = buf;

 ptr += sm501fb_show_regs(info, ptr, SM501_DC_CRT_CONTROL, 0x40);
 ptr += sm501fb_show_regs(info, ptr, SM501_DC_CRT_HWC_BASE, 0x10);

 return ptr - buf;
}
