
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct bcm2835_power {int dummy; } ;


 int ASB_ACK ;
 int ASB_READ (int ) ;
 int ASB_REQ_STOP ;
 int ASB_WRITE (int ,int) ;
 int ETIMEDOUT ;
 int cpu_relax () ;
 int ktime_get_ns () ;

__attribute__((used)) static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
{
 u64 start;

 if (!reg)
  return 0;

 start = ktime_get_ns();


 ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
 while (ASB_READ(reg) & ASB_ACK) {
  cpu_relax();
  if (ktime_get_ns() - start >= 1000)
   return -ETIMEDOUT;
 }

 return 0;
}
