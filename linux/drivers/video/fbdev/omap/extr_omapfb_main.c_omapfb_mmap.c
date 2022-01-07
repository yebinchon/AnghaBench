
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct omapfb_device {TYPE_1__* ctrl; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;
struct TYPE_2__ {int (* mmap ) (struct fb_info*,struct vm_area_struct*) ;} ;


 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 int stub1 (struct fb_info*,struct vm_area_struct*) ;

__attribute__((used)) static int omapfb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct omapfb_plane_struct *plane = info->par;
 struct omapfb_device *fbdev = plane->fbdev;
 int r;

 omapfb_rqueue_lock(fbdev);
 r = fbdev->ctrl->mmap(info, vma);
 omapfb_rqueue_unlock(fbdev);

 return r;
}
