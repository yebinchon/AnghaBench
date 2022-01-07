
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int util_str; } ;
struct channel_path {int lock; TYPE_1__ desc_fmt3; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int kobj_to_dev (struct kobject*) ;
 int memory_read_from_buffer (char*,size_t,int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct channel_path* to_channelpath (int ) ;

__attribute__((used)) static ssize_t util_string_read(struct file *filp, struct kobject *kobj,
    struct bin_attribute *attr, char *buf,
    loff_t off, size_t count)
{
 struct channel_path *chp = to_channelpath(kobj_to_dev(kobj));
 ssize_t rc;

 mutex_lock(&chp->lock);
 rc = memory_read_from_buffer(buf, count, &off, chp->desc_fmt3.util_str,
         sizeof(chp->desc_fmt3.util_str));
 mutex_unlock(&chp->lock);

 return rc;
}
