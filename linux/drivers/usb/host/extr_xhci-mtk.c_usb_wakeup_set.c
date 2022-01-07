
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {scalar_t__ uwk_en; } ;


 int usb_wakeup_ip_sleep_set (struct xhci_hcd_mtk*,int) ;

__attribute__((used)) static void usb_wakeup_set(struct xhci_hcd_mtk *mtk, bool enable)
{
 if (mtk->uwk_en)
  usb_wakeup_ip_sleep_set(mtk, enable);
}
