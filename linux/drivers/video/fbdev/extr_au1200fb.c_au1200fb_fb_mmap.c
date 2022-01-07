
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct fb_info {struct au1200fb_device* par; } ;
struct au1200fb_device {int fb_len; int fb_phys; int fb_mem; int dev; } ;


 int dma_mmap_attrs (int ,struct vm_area_struct*,int ,int ,int ,int ) ;

__attribute__((used)) static int au1200fb_fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct au1200fb_device *fbdev = info->par;

 return dma_mmap_attrs(fbdev->dev, vma, fbdev->fb_mem, fbdev->fb_phys,
   fbdev->fb_len, 0);
}
