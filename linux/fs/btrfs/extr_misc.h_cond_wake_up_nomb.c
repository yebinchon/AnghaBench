
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int dummy; } ;


 scalar_t__ waitqueue_active (struct wait_queue_head*) ;
 int wake_up (struct wait_queue_head*) ;

__attribute__((used)) static inline void cond_wake_up_nomb(struct wait_queue_head *wq)
{






 if (waitqueue_active(wq))
  wake_up(wq);
}
