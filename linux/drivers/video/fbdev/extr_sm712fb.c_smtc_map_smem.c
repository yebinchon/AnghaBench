
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct smtcfb_info {int chip_id; TYPE_3__* fb; int lfb; } ;
struct pci_dev {int dev; } ;
struct TYPE_5__ {int smem_start; int id; int smem_len; } ;
struct TYPE_4__ {int bits_per_pixel; } ;
struct TYPE_6__ {TYPE_2__ fix; int screen_base; TYPE_1__ var; } ;


 int ENOMEM ;
 scalar_t__ big_addr ;
 int dev_err (int *,char*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;

__attribute__((used)) static int smtc_map_smem(struct smtcfb_info *sfb,
    struct pci_dev *pdev, u_long smem_len)
{
 sfb->fb->fix.smem_start = pci_resource_start(pdev, 0);

 if (sfb->chip_id == 0x720)

  sfb->fb->fix.smem_start += 0x00200000;


 if (sfb->fb->var.bits_per_pixel == 32)
  sfb->fb->fix.smem_start += big_addr;

 sfb->fb->fix.smem_len = smem_len;

 sfb->fb->screen_base = sfb->lfb;

 if (!sfb->fb->screen_base) {
  dev_err(&pdev->dev,
   "%s: unable to map screen memory\n", sfb->fb->fix.id);
  return -ENOMEM;
 }

 return 0;
}
