
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; TYPE_1__* resource; } ;
struct TYPE_8__ {int smem_len; } ;
struct fb_info {int * screen_base; TYPE_3__ fix; int node; } ;
struct TYPE_7__ {int power; } ;
struct TYPE_9__ {TYPE_2__ props; } ;
struct TYPE_6__ {int flags; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int FB_BLANK_UNBLANK ;
 int IORESOURCE_MEM ;
 int PCI_COMMAND ;
 int backlight_update_status (TYPE_4__*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int) ;
 struct fb_info* framebuffer_alloc (int ,int *) ;
 int framebuffer_release (struct fb_info*) ;
 int init_chips (struct fb_info*,unsigned long) ;
 int * ioremap (unsigned long,int) ;
 int * ioremap_wc (unsigned long,int) ;
 int iounmap (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,unsigned short*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 scalar_t__ pci_request_region (struct pci_dev*,int ,char*) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct fb_info*) ;
 int pci_write_config_word (struct pci_dev*,int ,unsigned short) ;
 TYPE_4__* pmac_backlight ;
 int pmac_backlight_mutex ;
 scalar_t__ register_framebuffer (struct fb_info*) ;

__attribute__((used)) static int chipsfb_pci_init(struct pci_dev *dp, const struct pci_device_id *ent)
{
 struct fb_info *p;
 unsigned long addr;
 unsigned short cmd;
 int rc = -ENODEV;

 if (pci_enable_device(dp) < 0) {
  dev_err(&dp->dev, "Cannot enable PCI device\n");
  goto err_out;
 }

 if ((dp->resource[0].flags & IORESOURCE_MEM) == 0)
  goto err_disable;
 addr = pci_resource_start(dp, 0);
 if (addr == 0)
  goto err_disable;

 p = framebuffer_alloc(0, &dp->dev);
 if (p == ((void*)0)) {
  rc = -ENOMEM;
  goto err_disable;
 }

 if (pci_request_region(dp, 0, "chipsfb") != 0) {
  dev_err(&dp->dev, "Cannot request framebuffer\n");
  rc = -EBUSY;
  goto err_release_fb;
 }
 pci_read_config_word(dp, PCI_COMMAND, &cmd);
 cmd |= 3;
 pci_write_config_word(dp, PCI_COMMAND, cmd);
 p->screen_base = ioremap(addr, 0x200000);

 if (p->screen_base == ((void*)0)) {
  dev_err(&dp->dev, "Cannot map framebuffer\n");
  rc = -ENOMEM;
  goto err_release_pci;
 }

 pci_set_drvdata(dp, p);

 init_chips(p, addr);

 if (register_framebuffer(p) < 0) {
  dev_err(&dp->dev,"C&T 65550 framebuffer failed to register\n");
  goto err_unmap;
 }

 dev_info(&dp->dev,"fb%d: Chips 65550 frame buffer"
   " (%dK RAM detected)\n",
   p->node, p->fix.smem_len / 1024);

 return 0;

 err_unmap:
 iounmap(p->screen_base);
 err_release_pci:
 pci_release_region(dp, 0);
 err_release_fb:
 framebuffer_release(p);
 err_disable:
 err_out:
 return rc;
}
