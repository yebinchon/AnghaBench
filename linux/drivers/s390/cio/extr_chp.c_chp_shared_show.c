
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_path {int shared; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;
 struct channel_path* to_channelpath (struct device*) ;

__attribute__((used)) static ssize_t chp_shared_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct channel_path *chp = to_channelpath(dev);

 if (!chp)
  return 0;
 if (chp->shared == -1)
  return sprintf(buf, "unknown\n");
 return sprintf(buf, "%x\n", chp->shared);
}
