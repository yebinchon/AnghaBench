
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int outb (int const,unsigned int) ;

__attribute__((used)) static u8 cros_ec_lpc_write_bytes(unsigned int offset, unsigned int length,
      const u8 *msg)
{
 int sum = 0;
 int i;

 for (i = 0; i < length; ++i) {
  outb(msg[i], offset + i);
  sum += msg[i];
 }


 return sum;
}
