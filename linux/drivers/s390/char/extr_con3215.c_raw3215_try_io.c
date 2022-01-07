
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct raw3215_info {int flags; TYPE_2__ timer; TYPE_1__* queued_write; int * queued_read; int port; } ;
struct TYPE_3__ {scalar_t__ delayable; } ;


 int RAW3215_FLUSHING ;
 scalar_t__ RAW3215_TIMEOUT ;
 int RAW3215_TIMER_RUNS ;
 int RAW3215_WORKING ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int raw3215_start_io (struct raw3215_info*) ;
 int tty_port_initialized (int *) ;
 scalar_t__ tty_port_suspended (int *) ;

__attribute__((used)) static inline void raw3215_try_io(struct raw3215_info *raw)
{
 if (!tty_port_initialized(&raw->port) || tty_port_suspended(&raw->port))
  return;
 if (raw->queued_read != ((void*)0))
  raw3215_start_io(raw);
 else if (raw->queued_write != ((void*)0)) {
  if ((raw->queued_write->delayable == 0) ||
      (raw->flags & RAW3215_FLUSHING)) {

   raw3215_start_io(raw);
  }
 }
 if ((raw->queued_read || raw->queued_write) &&
     !(raw->flags & RAW3215_WORKING) &&
     !(raw->flags & RAW3215_TIMER_RUNS)) {
  raw->timer.expires = RAW3215_TIMEOUT + jiffies;
  add_timer(&raw->timer);
  raw->flags |= RAW3215_TIMER_RUNS;
 }
}
