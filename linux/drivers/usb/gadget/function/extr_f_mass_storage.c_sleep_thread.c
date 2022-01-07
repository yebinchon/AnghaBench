
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int io_wait; } ;
struct fsg_buffhd {int state; } ;


 scalar_t__ BUF_STATE_EMPTY ;
 int EINTR ;
 scalar_t__ smp_load_acquire (int *) ;
 int wait_event_freezable (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int sleep_thread(struct fsg_common *common, bool can_freeze,
  struct fsg_buffhd *bh)
{
 int rc;


 if (can_freeze)




  rc = wait_event_freezable(common->io_wait,
    bh && smp_load_acquire(&bh->state) >=
     BUF_STATE_EMPTY);
 else
  rc = wait_event_interruptible(common->io_wait,
    bh && smp_load_acquire(&bh->state) >=
     BUF_STATE_EMPTY);
 return rc ? -EINTR : 0;
}
