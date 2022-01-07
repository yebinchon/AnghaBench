
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_bitfield {int length; int offset; } ;



__attribute__((used)) static inline u32 chan_to_field(u32 chan, struct fb_bitfield *bf)
{
 return ((chan & 0xffff) >> (16 - bf->length)) << bf->offset;
}
