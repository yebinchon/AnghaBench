
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imxfb_info {int num_modes; struct imx_fb_videomode const* mode; } ;
struct TYPE_2__ {int name; } ;
typedef struct imx_fb_videomode {TYPE_1__ mode; } const imx_fb_videomode ;


 int fb_mode ;
 int strcmp (int ,int ) ;

__attribute__((used)) static const struct imx_fb_videomode *imxfb_find_mode(struct imxfb_info *fbi)
{
 struct imx_fb_videomode *m;
 int i;

 if (!fb_mode)
  return &fbi->mode[0];

 for (i = 0, m = &fbi->mode[0]; i < fbi->num_modes; i++, m++) {
  if (!strcmp(m->mode.name, fb_mode))
   return m;
 }
 return ((void*)0);
}
