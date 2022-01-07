
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,unsigned int) ;
 scalar_t__ sony_call_snc_handle (int,int,unsigned int*) ;

__attribute__((used)) static ssize_t sony_nc_hsfan_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 unsigned int result;

 if (sony_call_snc_handle(0x0149, 0x0100, &result))
  return -EIO;

 return snprintf(buffer, PAGE_SIZE, "%d\n", result & 0x01);
}
