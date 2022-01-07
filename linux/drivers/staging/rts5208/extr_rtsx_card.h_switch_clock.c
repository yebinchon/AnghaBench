
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {scalar_t__ asic_code; } ;


 int switch_normal_clock (struct rtsx_chip*,int) ;
 int switch_ssc_clock (struct rtsx_chip*,int) ;

__attribute__((used)) static inline int switch_clock(struct rtsx_chip *chip, int clk)
{
 int retval = 0;

 if (chip->asic_code)
  retval = switch_ssc_clock(chip, clk);
 else
  retval = switch_normal_clock(chip, clk);

 return retval;
}
