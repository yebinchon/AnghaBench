
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s1d13xxxfb_regval {scalar_t__ addr; scalar_t__ value; } ;
struct s1d13xxxfb_par {int dummy; } ;


 scalar_t__ S1DREG_DELAYOFF ;
 scalar_t__ S1DREG_DELAYON ;
 int mdelay (int) ;
 int s1d13xxxfb_writereg (struct s1d13xxxfb_par*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
s1d13xxxfb_runinit(struct s1d13xxxfb_par *par,
   const struct s1d13xxxfb_regval *initregs,
   const unsigned int size)
{
 int i;

 for (i = 0; i < size; i++) {
         if ((initregs[i].addr == S1DREG_DELAYOFF) ||
    (initregs[i].addr == S1DREG_DELAYON))
   mdelay((int)initregs[i].value);
         else {
   s1d13xxxfb_writereg(par, initregs[i].addr, initregs[i].value);
  }
        }


 mdelay(1);
}
