
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_path {int chpid; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int chp_info_get_status (int ) ;
 int snprintf (char*,int ,char*,int) ;
 struct channel_path* to_channelpath (struct device*) ;

__attribute__((used)) static ssize_t chp_configure_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct channel_path *cp;
 int status;

 cp = to_channelpath(dev);
 status = chp_info_get_status(cp->chpid);
 if (status < 0)
  return status;

 return snprintf(buf, PAGE_SIZE, "%d\n", status);
}
