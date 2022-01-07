
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {int regs; } ;
struct urb {int pipe; } ;
struct isp1760_qh {int slot; } ;
struct isp1760_hcd {TYPE_2__* int_slots; TYPE_1__* atl_slots; } ;
struct TYPE_4__ {int * qtd; int * qh; } ;
struct TYPE_3__ {int * qtd; int * qh; } ;


 int HC_ATL_PTD_SKIPMAP_REG ;
 int HC_INT_PTD_SKIPMAP_REG ;
 int WARN_ON (int) ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int reg_read32 (int ,int ) ;
 int reg_write32 (int ,int ,int) ;
 scalar_t__ usb_pipebulk (int ) ;
 scalar_t__ usb_pipecontrol (int ) ;

__attribute__((used)) static void kill_transfer(struct usb_hcd *hcd, struct urb *urb,
  struct isp1760_qh *qh)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 int skip_map;

 WARN_ON(qh->slot == -1);



 if (usb_pipecontrol(urb->pipe) || usb_pipebulk(urb->pipe)) {
  skip_map = reg_read32(hcd->regs, HC_ATL_PTD_SKIPMAP_REG);
  skip_map |= (1 << qh->slot);
  reg_write32(hcd->regs, HC_ATL_PTD_SKIPMAP_REG, skip_map);
  priv->atl_slots[qh->slot].qh = ((void*)0);
  priv->atl_slots[qh->slot].qtd = ((void*)0);
 } else {
  skip_map = reg_read32(hcd->regs, HC_INT_PTD_SKIPMAP_REG);
  skip_map |= (1 << qh->slot);
  reg_write32(hcd->regs, HC_INT_PTD_SKIPMAP_REG, skip_map);
  priv->int_slots[qh->slot].qh = ((void*)0);
  priv->int_slots[qh->slot].qtd = ((void*)0);
 }

 qh->slot = -1;
}
