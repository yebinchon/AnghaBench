
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct raw3215_info {int flags; int cdev; TYPE_1__ timer; scalar_t__ queued_write; scalar_t__ queued_read; int port; } ;


 scalar_t__ RAW3215_TIMEOUT ;
 int RAW3215_TIMER_RUNS ;
 int RAW3215_WORKING ;
 int add_timer (TYPE_1__*) ;
 struct raw3215_info* from_timer (int ,struct timer_list*,int ) ;
 int get_ccwdev_lock (int ) ;
 scalar_t__ jiffies ;
 struct raw3215_info* raw ;
 int raw3215_mk_write_req (struct raw3215_info*) ;
 int raw3215_start_io (struct raw3215_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int timer ;
 int tty_port_suspended (int *) ;

__attribute__((used)) static void raw3215_timeout(struct timer_list *t)
{
 struct raw3215_info *raw = from_timer(raw, t, timer);
 unsigned long flags;

 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 raw->flags &= ~RAW3215_TIMER_RUNS;
 if (!tty_port_suspended(&raw->port)) {
  raw3215_mk_write_req(raw);
  raw3215_start_io(raw);
  if ((raw->queued_read || raw->queued_write) &&
      !(raw->flags & RAW3215_WORKING) &&
      !(raw->flags & RAW3215_TIMER_RUNS)) {
   raw->timer.expires = RAW3215_TIMEOUT + jiffies;
   add_timer(&raw->timer);
   raw->flags |= RAW3215_TIMER_RUNS;
  }
 }
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
}
