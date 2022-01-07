
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int dummy; } ;


 unsigned int ARRAY_SIZE (scalar_t__) ;
 scalar_t__ gx_dcon_modedb ;
 scalar_t__ gx_modedb ;
 scalar_t__ olpc_has_dcon () ;

__attribute__((used)) static void get_modedb(struct fb_videomode **modedb, unsigned int *size)
{
 if (olpc_has_dcon()) {
  *modedb = (struct fb_videomode *) gx_dcon_modedb;
  *size = ARRAY_SIZE(gx_dcon_modedb);
 } else {
  *modedb = (struct fb_videomode *) gx_modedb;
  *size = ARRAY_SIZE(gx_modedb);
 }
}
