
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_loopback {int outstanding_operations; int wq_completion; } ;


 int atomic_read (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void gb_loopback_async_wait_all(struct gb_loopback *gb)
{
 wait_event(gb->wq_completion,
     !atomic_read(&gb->outstanding_operations));
}
