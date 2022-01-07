
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_path {int state; int lock; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*) ;
 struct channel_path* to_channelpath (struct device*) ;

__attribute__((used)) static ssize_t chp_status_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct channel_path *chp = to_channelpath(dev);
 int status;

 mutex_lock(&chp->lock);
 status = chp->state;
 mutex_unlock(&chp->lock);

 return status ? sprintf(buf, "online\n") : sprintf(buf, "offline\n");
}
