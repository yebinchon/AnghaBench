
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ABB5ZES3_REG_TIMA_CLK_TAQ1 ;

__attribute__((used)) static inline void sec_to_timer_a(u8 secs, u8 *taq, u8 *timer_a)
{
 *taq = ABB5ZES3_REG_TIMA_CLK_TAQ1;
 *timer_a = secs;
}
