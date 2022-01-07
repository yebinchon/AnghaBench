
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; int count; struct slgt_info* driver_data; int name; } ;
struct TYPE_2__ {int count; int low_latency; long flags; struct tty_struct* tty; int mutex; } ;
struct slgt_info {int line; int device_name; TYPE_1__ port; int netlock; scalar_t__ netcount; scalar_t__ init_error; struct slgt_info* next_device; } ;
struct file {int dummy; } ;


 long ASYNC_LOW_LATENCY ;
 int DBGERR (char*) ;
 int DBGINFO (char*) ;
 int EBUSY ;
 int ENODEV ;
 int block_til_ready (struct tty_struct*,struct file*,struct slgt_info*) ;
 int driver_name ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int slgt_device_count ;
 struct slgt_info* slgt_device_list ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int startup (struct slgt_info*) ;

__attribute__((used)) static int open(struct tty_struct *tty, struct file *filp)
{
 struct slgt_info *info;
 int retval, line;
 unsigned long flags;

 line = tty->index;
 if (line >= slgt_device_count) {
  DBGERR(("%s: open with invalid line #%d.\n", driver_name, line));
  return -ENODEV;
 }

 info = slgt_device_list;
 while(info && info->line != line)
  info = info->next_device;
 if (sanity_check(info, tty->name, "open"))
  return -ENODEV;
 if (info->init_error) {
  DBGERR(("%s init error=%d\n", info->device_name, info->init_error));
  return -ENODEV;
 }

 tty->driver_data = info;
 info->port.tty = tty;

 DBGINFO(("%s open, old ref count = %d\n", info->device_name, info->port.count));

 mutex_lock(&info->port.mutex);
 info->port.low_latency = (info->port.flags & ASYNC_LOW_LATENCY) ? 1 : 0;

 spin_lock_irqsave(&info->netlock, flags);
 if (info->netcount) {
  retval = -EBUSY;
  spin_unlock_irqrestore(&info->netlock, flags);
  mutex_unlock(&info->port.mutex);
  goto cleanup;
 }
 info->port.count++;
 spin_unlock_irqrestore(&info->netlock, flags);

 if (info->port.count == 1) {

  retval = startup(info);
  if (retval < 0) {
   mutex_unlock(&info->port.mutex);
   goto cleanup;
  }
 }
 mutex_unlock(&info->port.mutex);
 retval = block_til_ready(tty, filp, info);
 if (retval) {
  DBGINFO(("%s block_til_ready rc=%d\n", info->device_name, retval));
  goto cleanup;
 }

 retval = 0;

cleanup:
 if (retval) {
  if (tty->count == 1)
   info->port.tty = ((void*)0);
  if(info->port.count)
   info->port.count--;
 }

 DBGINFO(("%s open rc=%d\n", info->device_name, retval));
 return retval;
}
