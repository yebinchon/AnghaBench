
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_data {int state; int lock; } ;


 int EAGAIN ;
 int ENODEV ;
 unsigned int O_NONBLOCK ;



 int mutex_lock_interruptible (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,struct ep_data*,int) ;
 int shortname ;

__attribute__((used)) static int
get_ready_ep (unsigned f_flags, struct ep_data *epdata, bool is_write)
{
 int val;

 if (f_flags & O_NONBLOCK) {
  if (!mutex_trylock(&epdata->lock))
   goto nonblock;
  if (epdata->state != 130 &&
      (!is_write || epdata->state != 129)) {
   mutex_unlock(&epdata->lock);
nonblock:
   val = -EAGAIN;
  } else
   val = 0;
  return val;
 }

 val = mutex_lock_interruptible(&epdata->lock);
 if (val < 0)
  return val;

 switch (epdata->state) {
 case 130:
  return 0;
 case 129:
  if (is_write)
   return 0;

 case 128:
  break;

 default:
  pr_debug ("%s: ep %p not available, state %d\n",
    shortname, epdata, epdata->state);
 }
 mutex_unlock(&epdata->lock);
 return -ENODEV;
}
