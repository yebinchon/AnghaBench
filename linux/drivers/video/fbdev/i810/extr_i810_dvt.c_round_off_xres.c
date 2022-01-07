
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



void round_off_xres(u32 *xres)
{
 if (*xres <= 640)
  *xres = 640;
 else if (*xres <= 800)
  *xres = 800;
 else if (*xres <= 1024)
  *xres = 1024;
 else if (*xres <= 1152)
  *xres = 1152;
 else if (*xres <= 1280)
  *xres = 1280;
 else
  *xres = 1600;
}
