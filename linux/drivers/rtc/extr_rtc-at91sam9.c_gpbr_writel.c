
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sam9_rtc {int gpbr_offset; int gpbr; } ;


 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static inline void gpbr_writel(struct sam9_rtc *rtc, unsigned int val)
{
 regmap_write(rtc->gpbr, rtc->gpbr_offset, val);
}
