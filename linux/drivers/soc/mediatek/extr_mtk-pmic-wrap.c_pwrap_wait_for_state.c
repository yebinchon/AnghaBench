
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_wrapper {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 unsigned long usecs_to_jiffies (int) ;

__attribute__((used)) static int pwrap_wait_for_state(struct pmic_wrapper *wrp,
  bool (*fp)(struct pmic_wrapper *))
{
 unsigned long timeout;

 timeout = jiffies + usecs_to_jiffies(10000);

 do {
  if (time_after(jiffies, timeout))
   return fp(wrp) ? 0 : -ETIMEDOUT;
  if (fp(wrp))
   return 0;
 } while (1);
}
