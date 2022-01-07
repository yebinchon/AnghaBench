
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb2_device {int num_fbs; struct fb_info** fbs; } ;
struct fb_info {int dummy; } ;


 int DBG (char*) ;
 int clear_fb_info (struct fb_info*) ;
 int omapfb_free_fbmem (struct fb_info*) ;

__attribute__((used)) static int omapfb_free_all_fbmem(struct omapfb2_device *fbdev)
{
 int i;

 DBG("free all fbmem\n");

 for (i = 0; i < fbdev->num_fbs; i++) {
  struct fb_info *fbi = fbdev->fbs[i];
  omapfb_free_fbmem(fbi);
  clear_fb_info(fbi);
 }

 return 0;
}
