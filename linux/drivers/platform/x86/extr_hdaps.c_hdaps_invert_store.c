
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int HDAPS_BOTH_AXES ;
 int hdaps_calibrate () ;
 int hdaps_invert ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t hdaps_invert_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 int invert;

 if (sscanf(buf, "%d", &invert) != 1 ||
     invert < 0 || invert > HDAPS_BOTH_AXES)
  return -EINVAL;

 hdaps_invert = invert;
 hdaps_calibrate();

 return count;
}
