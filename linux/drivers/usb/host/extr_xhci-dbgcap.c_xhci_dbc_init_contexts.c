
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hcd {struct xhci_dbc* dbc; } ;
struct xhci_ep_ctx {void* deq; void* ep_info2; scalar_t__ ep_info; } ;
struct xhci_dbc {int string_dma; TYPE_4__* regs; TYPE_3__* ctx; TYPE_2__* ring_in; TYPE_1__* ring_out; } ;
struct dbc_info_context {void* length; void* serial; void* product; void* manufacturer; void* string0; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int devinfo2; int devinfo1; int dccp; int control; } ;
struct TYPE_7__ {int dma; scalar_t__ bytes; } ;
struct TYPE_6__ {int cycle_state; } ;
struct TYPE_5__ {int cycle_state; } ;


 int BULK_IN_EP ;
 int BULK_OUT_EP ;
 unsigned int DBC_CTRL_MAXBURST (int ) ;
 int DBC_DEVICE_REV ;
 int DBC_MAX_STRING_LENGTH ;
 int DBC_PRODUCT_ID ;
 int DBC_PROTOCOL ;
 int DBC_VENDOR_ID ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_le64 (int) ;
 struct xhci_ep_ctx* dbc_bulkin_ctx (struct xhci_dbc*) ;
 int dbc_bulkin_enq (struct xhci_dbc*) ;
 struct xhci_ep_ctx* dbc_bulkout_ctx (struct xhci_dbc*) ;
 int dbc_bulkout_enq (struct xhci_dbc*) ;
 void* dbc_epctx_info2 (int ,int,unsigned int) ;
 int readl (int *) ;
 int writel (int,int *) ;
 int xhci_write_64 (struct xhci_hcd*,int ,int *) ;

__attribute__((used)) static void xhci_dbc_init_contexts(struct xhci_hcd *xhci, u32 string_length)
{
 struct xhci_dbc *dbc;
 struct dbc_info_context *info;
 struct xhci_ep_ctx *ep_ctx;
 u32 dev_info;
 dma_addr_t deq, dma;
 unsigned int max_burst;

 dbc = xhci->dbc;
 if (!dbc)
  return;


 info = (struct dbc_info_context *)dbc->ctx->bytes;
 dma = dbc->string_dma;
 info->string0 = cpu_to_le64(dma);
 info->manufacturer = cpu_to_le64(dma + DBC_MAX_STRING_LENGTH);
 info->product = cpu_to_le64(dma + DBC_MAX_STRING_LENGTH * 2);
 info->serial = cpu_to_le64(dma + DBC_MAX_STRING_LENGTH * 3);
 info->length = cpu_to_le32(string_length);


 ep_ctx = dbc_bulkout_ctx(dbc);
 max_burst = DBC_CTRL_MAXBURST(readl(&dbc->regs->control));
 deq = dbc_bulkout_enq(dbc);
 ep_ctx->ep_info = 0;
 ep_ctx->ep_info2 = dbc_epctx_info2(BULK_OUT_EP, 1024, max_burst);
 ep_ctx->deq = cpu_to_le64(deq | dbc->ring_out->cycle_state);


 ep_ctx = dbc_bulkin_ctx(dbc);
 deq = dbc_bulkin_enq(dbc);
 ep_ctx->ep_info = 0;
 ep_ctx->ep_info2 = dbc_epctx_info2(BULK_IN_EP, 1024, max_burst);
 ep_ctx->deq = cpu_to_le64(deq | dbc->ring_in->cycle_state);


 xhci_write_64(xhci, dbc->ctx->dma, &dbc->regs->dccp);

 dev_info = cpu_to_le32((DBC_VENDOR_ID << 16) | DBC_PROTOCOL);
 writel(dev_info, &dbc->regs->devinfo1);

 dev_info = cpu_to_le32((DBC_DEVICE_REV << 16) | DBC_PRODUCT_ID);
 writel(dev_info, &dbc->regs->devinfo2);
}
