
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



inline void round_off_yres(u32 *xres, u32 *yres)
{
 *yres = (*xres * 3) >> 2;
}
