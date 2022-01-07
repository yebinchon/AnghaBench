
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_input_control_ctx {int drop_flags; int add_flags; } ;
struct xhci_hcd {int dummy; } ;


 int hweight32 (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 xhci_count_num_new_endpoints(struct xhci_hcd *xhci,
  struct xhci_input_control_ctx *ctrl_ctx)
{
 u32 valid_add_flags;
 u32 valid_drop_flags;





 valid_add_flags = le32_to_cpu(ctrl_ctx->add_flags) >> 2;
 valid_drop_flags = le32_to_cpu(ctrl_ctx->drop_flags) >> 2;





 return hweight32(valid_add_flags) -
  hweight32(valid_add_flags & valid_drop_flags);
}
