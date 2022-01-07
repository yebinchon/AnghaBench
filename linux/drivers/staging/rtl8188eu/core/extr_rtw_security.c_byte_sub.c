
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int sbox (int ) ;

__attribute__((used)) static void byte_sub(u8 *in, u8 *out)
{
 int i;
 for (i = 0; i < 16; i++)
  out[i] = sbox(in[i]);
}
