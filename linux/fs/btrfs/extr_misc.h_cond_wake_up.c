
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int dummy; } ;


 int wake_up (struct wait_queue_head*) ;
 scalar_t__ wq_has_sleeper (struct wait_queue_head*) ;

__attribute__((used)) static inline void cond_wake_up(struct wait_queue_head *wq)
{




 if (wq_has_sleeper(wq))
  wake_up(wq);
}
