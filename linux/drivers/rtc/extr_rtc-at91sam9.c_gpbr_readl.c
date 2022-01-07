
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sam9_rtc {int gpbr_offset; int gpbr; } ;


 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static inline unsigned int gpbr_readl(struct sam9_rtc *rtc)
{
 unsigned int val;

 regmap_read(rtc->gpbr, rtc->gpbr_offset, &val);

 return val;
}
