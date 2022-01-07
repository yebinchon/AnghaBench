
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int lx_get_pitch(unsigned int xres, int bpp)
{
 return (((xres * (bpp >> 3)) + 7) & ~7);
}
