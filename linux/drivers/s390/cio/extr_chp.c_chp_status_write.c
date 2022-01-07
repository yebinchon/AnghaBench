
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_path {int lock; int chpid; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s390_vary_chpid (int ,int) ;
 int sscanf (char const*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strncasecmp (char*,char*,int) ;
 struct channel_path* to_channelpath (struct device*) ;

__attribute__((used)) static ssize_t chp_status_write(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct channel_path *cp = to_channelpath(dev);
 char cmd[10];
 int num_args;
 int error;

 num_args = sscanf(buf, "%5s", cmd);
 if (!num_args)
  return count;

 if (!strncasecmp(cmd, "on", 2) || !strcmp(cmd, "1")) {
  mutex_lock(&cp->lock);
  error = s390_vary_chpid(cp->chpid, 1);
  mutex_unlock(&cp->lock);
 } else if (!strncasecmp(cmd, "off", 3) || !strcmp(cmd, "0")) {
  mutex_lock(&cp->lock);
  error = s390_vary_chpid(cp->chpid, 0);
  mutex_unlock(&cp->lock);
 } else
  error = -EINVAL;

 return error < 0 ? error : count;
}
