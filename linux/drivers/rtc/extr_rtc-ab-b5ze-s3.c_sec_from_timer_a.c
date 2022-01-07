
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ABB5ZES3_REG_TIMA_CLK_TAQ1 ;
 int EINVAL ;

__attribute__((used)) static inline int sec_from_timer_a(u8 *secs, u8 taq, u8 timer_a)
{
 if (taq != ABB5ZES3_REG_TIMA_CLK_TAQ1)
  return -EINVAL;

 *secs = timer_a;

 return 0;
}
