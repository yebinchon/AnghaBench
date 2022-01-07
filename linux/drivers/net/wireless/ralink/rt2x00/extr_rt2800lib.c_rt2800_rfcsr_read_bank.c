
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int rt2800_rfcsr_read (struct rt2x00_dev*,unsigned int const) ;

__attribute__((used)) static u8 rt2800_rfcsr_read_bank(struct rt2x00_dev *rt2x00dev, const u8 bank,
     const unsigned int reg)
{
 return rt2800_rfcsr_read(rt2x00dev, (reg | (bank << 6)));
}
