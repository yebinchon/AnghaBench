
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_loopback {scalar_t__ outstanding_operations_max; int outstanding_operations; int wq_completion; scalar_t__ async; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ kthread_should_stop () ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static void gb_loopback_async_wait_to_send(struct gb_loopback *gb)
{
 if (!(gb->async && gb->outstanding_operations_max))
  return;
 wait_event_interruptible(gb->wq_completion,
     (atomic_read(&gb->outstanding_operations) <
      gb->outstanding_operations_max) ||
      kthread_should_stop());
}
