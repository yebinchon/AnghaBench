
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int speakup_event ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void thread_wake_up(struct timer_list *unused)
{
 wake_up_interruptible_all(&speakup_event);
}
