
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;


 int IUU_SET_LED ;

__attribute__((used)) static void iuu_rgbf_fill_buffer(u8 *buf, u8 r1, u8 r2, u8 g1, u8 g2, u8 b1,
     u8 b2, u8 freq)
{
 *buf++ = IUU_SET_LED;
 *buf++ = r1;
 *buf++ = r2;
 *buf++ = g1;
 *buf++ = g2;
 *buf++ = b1;
 *buf++ = b2;
 *buf = freq;
}
