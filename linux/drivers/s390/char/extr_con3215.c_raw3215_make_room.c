
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {unsigned int count; int cdev; int flags; int port; } ;


 unsigned int RAW3215_BUFFER_SIZE ;
 int RAW3215_FLUSHING ;
 int ccw_device_wait_idle (int ) ;
 int get_ccwdev_lock (int ) ;
 int raw3215_drop_line (struct raw3215_info*) ;
 int raw3215_mk_write_req (struct raw3215_info*) ;
 int raw3215_try_io (struct raw3215_info*) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 scalar_t__ tty_port_suspended (int *) ;
 int udelay (int) ;

__attribute__((used)) static void raw3215_make_room(struct raw3215_info *raw, unsigned int length)
{
 while (RAW3215_BUFFER_SIZE - raw->count < length) {



  if (tty_port_suspended(&raw->port)) {
   raw3215_drop_line(raw);
   continue;
  }

  raw->flags |= RAW3215_FLUSHING;
  raw3215_mk_write_req(raw);
  raw3215_try_io(raw);
  raw->flags &= ~RAW3215_FLUSHING;




  if (RAW3215_BUFFER_SIZE - raw->count >= length)
   break;

  spin_unlock(get_ccwdev_lock(raw->cdev));
  udelay(100);
  spin_lock(get_ccwdev_lock(raw->cdev));
 }
}
