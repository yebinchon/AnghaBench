
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HZ ;
 int jiffies ;
 int pr_cont (char*,...) ;
 int pr_warn (char*) ;
 int schedule_timeout_interruptible (unsigned int) ;
 scalar_t__ time_after (int ,unsigned long) ;

__attribute__((used)) static bool wait_loop(unsigned long start, unsigned int max_delay,
       unsigned int *seconds_waited)
{
 if (time_after(jiffies, start + (*seconds_waited+5)*HZ)) {
  if (!*seconds_waited)
   pr_warn("Waiting for devices to initialise: ");
  *seconds_waited += 5;
  pr_cont("%us...", max_delay - *seconds_waited);
  if (*seconds_waited == max_delay) {
   pr_cont("\n");
   return 1;
  }
 }

 schedule_timeout_interruptible(HZ/10);

 return 0;
}
