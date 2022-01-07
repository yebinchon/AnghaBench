
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xxx_par {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int scan_align; int buf_align; int access_align; int flags; int size; int addr; } ;
struct fb_info {TYPE_2__ fix; int cmap; int var; TYPE_1__ pixmap; int flags; int pseudo_palette; int * fbops; int screen_base; struct xxx_par* par; } ;


 int EINVAL ;
 int ENOMEM ;
 int FBINFO_DEFAULT ;
 int FB_PIXMAP_SYSTEM ;
 int GFP_KERNEL ;
 int PIXMAP_SIZE ;
 scalar_t__ fb_alloc_cmap (int *,int,int ) ;
 int fb_dealloc_cmap (int *) ;
 int fb_find_mode (int *,struct fb_info*,char*,int *,int ,int *,int) ;
 int fb_info (struct fb_info*,char*,int ) ;
 struct fb_info* framebuffer_alloc (int,struct device*) ;
 int framebuffer_virtual_memory ;
 int kmalloc (int ,int ) ;
 char* mode_option ;
 int pci_set_drvdata (struct pci_dev*,struct fb_info*) ;
 int pseudo_palette ;
 scalar_t__ register_framebuffer (struct fb_info*) ;
 int xxxfb_check_var (int *,struct fb_info*) ;
 TYPE_2__ xxxfb_fix ;
 int xxxfb_ops ;
 int xxxfb_var ;

__attribute__((used)) static int xxxfb_probe(struct pci_dev *dev, const struct pci_device_id *ent)
{
    struct fb_info *info;
    struct xxx_par *par;
    struct device *device = &dev->dev;
    int cmap_len, retval;




    info = framebuffer_alloc(sizeof(struct xxx_par), device);

    if (!info) {

    }

    par = info->par;







    info->screen_base = framebuffer_virtual_memory;
    info->fbops = &xxxfb_ops;
    info->fix = xxxfb_fix;
    info->pseudo_palette = pseudo_palette;
    info->flags = FBINFO_DEFAULT;
    info->pixmap.addr = kmalloc(PIXMAP_SIZE, GFP_KERNEL);
    if (!info->pixmap.addr) {

    }

    info->pixmap.size = PIXMAP_SIZE;
    info->pixmap.flags = FB_PIXMAP_SYSTEM;





    info->pixmap.scan_align = 4;






    info->pixmap.buf_align = 4;







    info->pixmap.access_align = 32;






    if (!mode_option)
 mode_option = "640x480@60";

    retval = fb_find_mode(&info->var, info, mode_option, ((void*)0), 0, ((void*)0), 8);

    if (!retval || retval == 4)
 return -EINVAL;


    if (fb_alloc_cmap(&info->cmap, cmap_len, 0))
 return -ENOMEM;





    info->var = xxxfb_var;




    xxxfb_check_var(&info->var, info);
    if (register_framebuffer(info) < 0) {
 fb_dealloc_cmap(&info->cmap);
 return -EINVAL;
    }
    fb_info(info, "%s frame buffer device\n", info->fix.id);
    pci_set_drvdata(dev, info);
    return 0;
}
