
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cardstate {int waiting; int mutex; int waitqueue; int at_state; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOMEM ;
 size_t ERESTARTSYS ;
 int EV_PROC_CIDMODE ;
 struct cardstate* dev_get_drvdata (struct device*) ;
 int gigaset_add_event (struct cardstate*,int *,int ,int *,long,int *) ;
 int gigaset_schedule_event (struct cardstate*) ;
 int isspace (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,char**,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static ssize_t set_cidmode(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct cardstate *cs = dev_get_drvdata(dev);
 long int value;
 char *end;

 value = simple_strtol(buf, &end, 0);
 while (*end)
  if (!isspace(*end++))
   return -EINVAL;
 if (value < 0 || value > 1)
  return -EINVAL;

 if (mutex_lock_interruptible(&cs->mutex))
  return -ERESTARTSYS;

 cs->waiting = 1;
 if (!gigaset_add_event(cs, &cs->at_state, EV_PROC_CIDMODE,
          ((void*)0), value, ((void*)0))) {
  cs->waiting = 0;
  mutex_unlock(&cs->mutex);
  return -ENOMEM;
 }
 gigaset_schedule_event(cs);

 wait_event(cs->waitqueue, !cs->waiting);

 mutex_unlock(&cs->mutex);

 return count;
}
