
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_hcd_mtk {struct mu3h_sch_bw_info* sch_array; int hcd; } ;
struct TYPE_4__ {int num_ports; } ;
struct TYPE_3__ {int num_ports; } ;
struct xhci_hcd {TYPE_2__ usb2_rhub; TYPE_1__ usb3_rhub; } ;
struct mu3h_sch_bw_info {int bw_ep_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct xhci_hcd* hcd_to_xhci (int ) ;
 struct mu3h_sch_bw_info* kcalloc (int,int,int ) ;

int xhci_mtk_sch_init(struct xhci_hcd_mtk *mtk)
{
 struct xhci_hcd *xhci = hcd_to_xhci(mtk->hcd);
 struct mu3h_sch_bw_info *sch_array;
 int num_usb_bus;
 int i;


 num_usb_bus = xhci->usb3_rhub.num_ports * 2 + xhci->usb2_rhub.num_ports;

 sch_array = kcalloc(num_usb_bus, sizeof(*sch_array), GFP_KERNEL);
 if (sch_array == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < num_usb_bus; i++)
  INIT_LIST_HEAD(&sch_array[i].bw_ep_list);

 mtk->sch_array = sch_array;

 return 0;
}
