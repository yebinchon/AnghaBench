
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct fb_bitfield {int length; unsigned int offset; } ;



__attribute__((used)) static u32 chan_to_field(unsigned int chan, struct fb_bitfield *bf)
{
 chan &= 0xffff;
 chan >>= 16 - bf->length;
 return chan << bf->offset;
}
