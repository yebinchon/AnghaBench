
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct xhci_command {int dummy; } ;
typedef enum xhci_setup_dev { ____Placeholder_xhci_setup_dev } xhci_setup_dev ;
typedef int dma_addr_t ;


 int SETUP_CONTEXT_ONLY ;
 int SLOT_ID_FOR_TRB (int ) ;
 int TRB_ADDR_DEV ;
 int TRB_BSR ;
 int TRB_TYPE (int ) ;
 int lower_32_bits (int ) ;
 int queue_command (struct xhci_hcd*,struct xhci_command*,int ,int ,int ,int,int) ;
 int upper_32_bits (int ) ;

int xhci_queue_address_device(struct xhci_hcd *xhci, struct xhci_command *cmd,
  dma_addr_t in_ctx_ptr, u32 slot_id, enum xhci_setup_dev setup)
{
 return queue_command(xhci, cmd, lower_32_bits(in_ctx_ptr),
   upper_32_bits(in_ctx_ptr), 0,
   TRB_TYPE(TRB_ADDR_DEV) | SLOT_ID_FOR_TRB(slot_id)
   | (setup == SETUP_CONTEXT_ONLY ? TRB_BSR : 0), 0);
}
