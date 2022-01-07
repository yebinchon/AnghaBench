
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int controller; } ;
struct usb_hcd {int uses_new_polling; TYPE_2__ self; } ;
struct ehci_hcd {int periodic_dma; int command; int sbrn; TYPE_4__* regs; TYPE_3__* caps; int last_periodic_enable; int rh_state; TYPE_1__* async; } ;
struct TYPE_8__ {int intr_enable; int command; int configured_flag; int segment; int async_next; int frame_list; } ;
struct TYPE_7__ {int hc_capbase; int hcc_params; } ;
struct TYPE_5__ {scalar_t__ qh_dma; } ;


 int CMD_ASE ;
 int CMD_IAAD ;
 int CMD_LRESET ;
 int CMD_PSE ;
 int CMD_RESET ;
 int CMD_RUN ;
 int DMA_BIT_MASK (int) ;
 int EHCI_RH_RUNNING ;
 int FLAG_CF ;
 scalar_t__ HCC_64BIT_ADDR (int) ;
 int HC_VERSION (struct ehci_hcd*,int) ;
 int INTR_MASK ;
 int create_debug_files (struct ehci_hcd*) ;
 int create_sysfs_files (struct ehci_hcd*) ;
 int dbg_cmd (struct ehci_hcd*,char*,int) ;
 int dma_set_mask (int ,int ) ;
 int down_write (int *) ;
 int ehci_cf_port_reset_rwsem ;
 int ehci_info (struct ehci_hcd*,char*,...) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 scalar_t__ ignore_oc ;
 int ktime_get_real () ;
 int msleep (int) ;
 int up_write (int *) ;

__attribute__((used)) static int ehci_run (struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 u32 temp;
 u32 hcc_params;

 hcd->uses_new_polling = 1;



 ehci_writel(ehci, ehci->periodic_dma, &ehci->regs->frame_list);
 ehci_writel(ehci, (u32)ehci->async->qh_dma, &ehci->regs->async_next);
 hcc_params = ehci_readl(ehci, &ehci->caps->hcc_params);
 if (HCC_64BIT_ADDR(hcc_params)) {
  ehci_writel(ehci, 0, &ehci->regs->segment);





 }




 ehci->command &= ~(CMD_LRESET|CMD_IAAD|CMD_PSE|CMD_ASE|CMD_RESET);
 ehci->command |= CMD_RUN;
 ehci_writel(ehci, ehci->command, &ehci->regs->command);
 dbg_cmd (ehci, "init", ehci->command);
 down_write(&ehci_cf_port_reset_rwsem);
 ehci->rh_state = EHCI_RH_RUNNING;
 ehci_writel(ehci, FLAG_CF, &ehci->regs->configured_flag);
 ehci_readl(ehci, &ehci->regs->command);
 msleep(5);
 up_write(&ehci_cf_port_reset_rwsem);
 ehci->last_periodic_enable = ktime_get_real();

 temp = HC_VERSION(ehci, ehci_readl(ehci, &ehci->caps->hc_capbase));
 ehci_info (ehci,
  "USB %x.%x started, EHCI %x.%02x%s\n",
  ((ehci->sbrn & 0xf0)>>4), (ehci->sbrn & 0x0f),
  temp >> 8, temp & 0xff,
  ignore_oc ? ", overcurrent ignored" : "");

 ehci_writel(ehci, INTR_MASK,
      &ehci->regs->intr_enable);





 create_debug_files(ehci);
 create_sysfs_files(ehci);

 return 0;
}
