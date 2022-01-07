
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_ep_ctx {int dummy; } ;
struct usb_host_endpoint {int desc; } ;
struct usb_device {scalar_t__ speed; } ;
struct mu3h_sch_tt {int dummy; } ;
struct mu3h_sch_ep_info {struct usb_host_endpoint* ep; struct mu3h_sch_tt* sch_tt; } ;


 int ENOMEM ;
 struct mu3h_sch_ep_info* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mu3h_sch_tt*) ;
 int TT_MICROFRAMES_MAX ;
 scalar_t__ USB_SPEED_SUPER ;
 struct mu3h_sch_tt* find_tt (struct usb_device*) ;
 int get_esit (struct xhci_ep_ctx*) ;
 scalar_t__ is_fs_or_ls (scalar_t__) ;
 int kfree (struct mu3h_sch_ep_info*) ;
 struct mu3h_sch_ep_info* kzalloc (size_t,int ) ;
 scalar_t__ usb_endpoint_xfer_isoc (int *) ;

__attribute__((used)) static struct mu3h_sch_ep_info *create_sch_ep(struct usb_device *udev,
 struct usb_host_endpoint *ep, struct xhci_ep_ctx *ep_ctx)
{
 struct mu3h_sch_ep_info *sch_ep;
 struct mu3h_sch_tt *tt = ((void*)0);
 u32 len_bw_budget_table;
 size_t mem_size;

 if (is_fs_or_ls(udev->speed))
  len_bw_budget_table = TT_MICROFRAMES_MAX;
 else if ((udev->speed >= USB_SPEED_SUPER)
   && usb_endpoint_xfer_isoc(&ep->desc))
  len_bw_budget_table = get_esit(ep_ctx);
 else
  len_bw_budget_table = 1;

 mem_size = sizeof(struct mu3h_sch_ep_info) +
   len_bw_budget_table * sizeof(u32);
 sch_ep = kzalloc(mem_size, GFP_KERNEL);
 if (!sch_ep)
  return ERR_PTR(-ENOMEM);

 if (is_fs_or_ls(udev->speed)) {
  tt = find_tt(udev);
  if (IS_ERR(tt)) {
   kfree(sch_ep);
   return ERR_PTR(-ENOMEM);
  }
 }

 sch_ep->sch_tt = tt;
 sch_ep->ep = ep;

 return sch_ep;
}
