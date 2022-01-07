
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int MAX_TIME ;
 int MIN_TIME_CYCLE ;
 int pr_debug (char*,int,int,int) ;
 int timer_set ;

__attribute__((used)) static int check_timer_margin(int new_margin)
{
 if ((new_margin < MIN_TIME_CYCLE) ||
     (new_margin > MAX_TIME - timer_set)) {
  pr_debug("value of new_margin %d is out of the range %d to %d\n",
    new_margin, MIN_TIME_CYCLE, MAX_TIME - timer_set);
  return -EINVAL;
 }
 return 0;
}
