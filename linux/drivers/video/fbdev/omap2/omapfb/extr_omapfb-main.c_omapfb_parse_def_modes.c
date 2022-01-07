
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb2_device {int num_displays; TYPE_1__* displays; } ;
struct omap_dss_device {int name; } ;
struct TYPE_2__ {struct omap_dss_device* dssdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int def_mode ;
 int kfree (char*) ;
 char* kstrdup (int ,int ) ;
 int omapfb_set_def_mode (struct omapfb2_device*,struct omap_dss_device*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int omapfb_parse_def_modes(struct omapfb2_device *fbdev)
{
 char *str, *options, *this_opt;
 int r = 0;

 str = kstrdup(def_mode, GFP_KERNEL);
 if (!str)
  return -ENOMEM;
 options = str;

 while (!r && (this_opt = strsep(&options, ",")) != ((void*)0)) {
  char *p, *display_str, *mode_str;
  struct omap_dss_device *display;
  int i;

  p = strchr(this_opt, ':');
  if (!p) {
   r = -EINVAL;
   break;
  }

  *p = 0;
  display_str = this_opt;
  mode_str = p + 1;

  display = ((void*)0);
  for (i = 0; i < fbdev->num_displays; ++i) {
   if (strcmp(fbdev->displays[i].dssdev->name,
      display_str) == 0) {
    display = fbdev->displays[i].dssdev;
    break;
   }
  }

  if (!display) {
   r = -EINVAL;
   break;
  }

  r = omapfb_set_def_mode(fbdev, display, mode_str);
  if (r)
   break;
 }

 kfree(str);

 return r;
}
