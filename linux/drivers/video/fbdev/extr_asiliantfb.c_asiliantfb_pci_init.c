
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; TYPE_1__* resource; } ;
struct fb_info {int * screen_base; int * par; int * pseudo_palette; } ;
struct TYPE_2__ {int flags; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 struct fb_info* framebuffer_alloc (int,int *) ;
 int framebuffer_release (struct fb_info*) ;
 int init_asiliant (struct fb_info*,unsigned long) ;
 int * ioremap (unsigned long,int) ;
 int iounmap (int *) ;
 unsigned long pci_resource_len (struct pci_dev*,int ) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct fb_info*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int release_mem_region (unsigned long,unsigned long) ;
 int request_mem_region (unsigned long,unsigned long,char*) ;
 int writeb (int,int *) ;

__attribute__((used)) static int asiliantfb_pci_init(struct pci_dev *dp,
          const struct pci_device_id *ent)
{
 unsigned long addr, size;
 struct fb_info *p;
 int err;

 if ((dp->resource[0].flags & IORESOURCE_MEM) == 0)
  return -ENODEV;
 addr = pci_resource_start(dp, 0);
 size = pci_resource_len(dp, 0);
 if (addr == 0)
  return -ENODEV;
 if (!request_mem_region(addr, size, "asiliantfb"))
  return -EBUSY;

 p = framebuffer_alloc(sizeof(u32) * 16, &dp->dev);
 if (!p) {
  release_mem_region(addr, size);
  return -ENOMEM;
 }
 p->pseudo_palette = p->par;
 p->par = ((void*)0);

 p->screen_base = ioremap(addr, 0x800000);
 if (p->screen_base == ((void*)0)) {
  release_mem_region(addr, size);
  framebuffer_release(p);
  return -ENOMEM;
 }

 pci_write_config_dword(dp, 4, 0x02800083);
 writeb(3, p->screen_base + 0x400784);

 err = init_asiliant(p, addr);
 if (err) {
  iounmap(p->screen_base);
  release_mem_region(addr, size);
  framebuffer_release(p);
  return err;
 }

 pci_set_drvdata(dp, p);
 return 0;
}
