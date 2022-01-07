
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int region_cnt; } ;
struct omapfb_device {int ** fb_info; TYPE_1__ mem_desc; } ;


 int fbinfo_cleanup (struct omapfb_device*,int *) ;
 int framebuffer_release (int *) ;

__attribute__((used)) static void planes_cleanup(struct omapfb_device *fbdev)
{
 int i;

 for (i = 0; i < fbdev->mem_desc.region_cnt; i++) {
  if (fbdev->fb_info[i] == ((void*)0))
   break;
  fbinfo_cleanup(fbdev, fbdev->fb_info[i]);
  framebuffer_release(fbdev->fb_info[i]);
 }
}
