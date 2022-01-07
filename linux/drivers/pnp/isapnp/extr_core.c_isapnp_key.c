
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (int) ;
 int write_address (unsigned char) ;

__attribute__((used)) static void isapnp_key(void)
{
 unsigned char code = 0x6a, msb;
 int i;

 mdelay(1);
 write_address(0x00);
 write_address(0x00);

 write_address(code);

 for (i = 1; i < 32; i++) {
  msb = ((code & 0x01) ^ ((code & 0x02) >> 1)) << 7;
  code = (code >> 1) | msb;
  write_address(code);
 }
}
