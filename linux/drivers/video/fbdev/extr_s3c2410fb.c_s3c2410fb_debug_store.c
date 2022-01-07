
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int debug ;
 int dev_dbg (struct device*,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int s3c2410fb_debug_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 if (len < 1)
  return -EINVAL;

 if (strncasecmp(buf, "on", 2) == 0 ||
     strncasecmp(buf, "1", 1) == 0) {
  debug = 1;
  dev_dbg(dev, "s3c2410fb: Debug On");
 } else if (strncasecmp(buf, "off", 3) == 0 ||
     strncasecmp(buf, "0", 1) == 0) {
  debug = 0;
  dev_dbg(dev, "s3c2410fb: Debug Off");
 } else {
  return -EINVAL;
 }

 return len;
}
