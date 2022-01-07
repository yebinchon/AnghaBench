
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kp_spi_controller_state {int dummy; } ;


 int ETIMEDOUT ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long kp_spi_read_reg (struct kp_spi_controller_state*,int) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int
kp_spi_wait_for_reg_bit(struct kp_spi_controller_state *cs, int idx,
   unsigned long bit)
{
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(1000);
 while (!(kp_spi_read_reg(cs, idx) & bit)) {
  if (time_after(jiffies, timeout)) {
   if (!(kp_spi_read_reg(cs, idx) & bit))
    return -ETIMEDOUT;
   else
    return 0;
  }
  cpu_relax();
 }
 return 0;
}
