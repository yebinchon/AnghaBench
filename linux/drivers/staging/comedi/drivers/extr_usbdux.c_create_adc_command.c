
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 create_adc_command(unsigned int chan, unsigned int range)
{
 u8 p = (range <= 1);
 u8 r = ((range % 2) == 0);

 return (chan << 4) | ((p == 1) << 2) | ((r == 1) << 3);
}
