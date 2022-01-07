
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int uses_new_polling; } ;
struct fotg210_hcd {int periodic_dma; int command; int sbrn; TYPE_3__* regs; TYPE_2__* caps; int last_periodic_enable; int rh_state; TYPE_1__* async; } ;
struct TYPE_6__ {int intr_enable; int command; int async_next; int frame_list; } ;
struct TYPE_5__ {int hc_capbase; int hcc_params; } ;
struct TYPE_4__ {scalar_t__ qh_dma; } ;


 int CMD_ASE ;
 int CMD_IAAD ;
 int CMD_PSE ;
 int CMD_RESET ;
 int CMD_RUN ;
 int FOTG210_RH_RUNNING ;
 int HC_VERSION (struct fotg210_hcd*,int) ;
 int INTR_MASK ;
 int create_debug_files (struct fotg210_hcd*) ;
 int create_sysfs_files (struct fotg210_hcd*) ;
 int dbg_cmd (struct fotg210_hcd*,char*,int) ;
 int down_write (int *) ;
 int ehci_cf_port_reset_rwsem ;
 int fotg210_info (struct fotg210_hcd*,char*,int,int,int,int) ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;
 int fotg210_writel (struct fotg210_hcd*,int,int *) ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int ktime_get_real () ;
 int up_write (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int fotg210_run(struct usb_hcd *hcd)
{
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);
 u32 temp;
 u32 hcc_params;

 hcd->uses_new_polling = 1;



 fotg210_writel(fotg210, fotg210->periodic_dma,
   &fotg210->regs->frame_list);
 fotg210_writel(fotg210, (u32)fotg210->async->qh_dma,
   &fotg210->regs->async_next);
 hcc_params = fotg210_readl(fotg210, &fotg210->caps->hcc_params);





 fotg210->command &= ~(CMD_IAAD|CMD_PSE|CMD_ASE|CMD_RESET);
 fotg210->command |= CMD_RUN;
 fotg210_writel(fotg210, fotg210->command, &fotg210->regs->command);
 dbg_cmd(fotg210, "init", fotg210->command);
 down_write(&ehci_cf_port_reset_rwsem);
 fotg210->rh_state = FOTG210_RH_RUNNING;

 fotg210_readl(fotg210, &fotg210->regs->command);
 usleep_range(5000, 10000);
 up_write(&ehci_cf_port_reset_rwsem);
 fotg210->last_periodic_enable = ktime_get_real();

 temp = HC_VERSION(fotg210,
   fotg210_readl(fotg210, &fotg210->caps->hc_capbase));
 fotg210_info(fotg210,
   "USB %x.%x started, EHCI %x.%02x\n",
   ((fotg210->sbrn & 0xf0) >> 4), (fotg210->sbrn & 0x0f),
   temp >> 8, temp & 0xff);

 fotg210_writel(fotg210, INTR_MASK,
   &fotg210->regs->intr_enable);





 create_debug_files(fotg210);
 create_sysfs_files(fotg210);

 return 0;
}
