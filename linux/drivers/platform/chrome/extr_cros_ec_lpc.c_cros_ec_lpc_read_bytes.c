
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (unsigned int) ;

__attribute__((used)) static u8 cros_ec_lpc_read_bytes(unsigned int offset, unsigned int length,
     u8 *dest)
{
 int sum = 0;
 int i;

 for (i = 0; i < length; ++i) {
  dest[i] = inb(offset + i);
  sum += dest[i];
 }


 return sum;
}
