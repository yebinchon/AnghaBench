
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int rt2800_rfcsr_write_bank (struct rt2x00_dev*,int,unsigned int const,int const) ;

__attribute__((used)) static void rt2800_rfcsr_write_dccal(struct rt2x00_dev *rt2x00dev,
         const unsigned int reg, const u8 value)
{
 rt2800_rfcsr_write_bank(rt2x00dev, 5, reg, value);
 rt2800_rfcsr_write_bank(rt2x00dev, 7, reg, value);
}
