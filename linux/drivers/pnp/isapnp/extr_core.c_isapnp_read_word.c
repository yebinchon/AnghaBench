
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short isapnp_read_byte (unsigned char) ;

__attribute__((used)) static unsigned short isapnp_read_word(unsigned char idx)
{
 unsigned short val;

 val = isapnp_read_byte(idx);
 val = (val << 8) + isapnp_read_byte(idx + 1);
 return val;
}
