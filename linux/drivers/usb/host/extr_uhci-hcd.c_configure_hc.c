
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int frame_number; int (* configure_hc ) (struct uhci_hcd*) ;int frame_dma_handle; } ;


 int UHCI_MAX_SOF_NUMBER ;
 int USBFLBASEADD ;
 int USBFRNUM ;
 int USBSOF ;
 int USBSOF_DEFAULT ;
 int stub1 (struct uhci_hcd*) ;
 int uhci_writeb (struct uhci_hcd*,int ,int ) ;
 int uhci_writel (struct uhci_hcd*,int ,int ) ;
 int uhci_writew (struct uhci_hcd*,int,int ) ;

__attribute__((used)) static void configure_hc(struct uhci_hcd *uhci)
{

 uhci_writeb(uhci, USBSOF_DEFAULT, USBSOF);


 uhci_writel(uhci, uhci->frame_dma_handle, USBFLBASEADD);


 uhci_writew(uhci, uhci->frame_number & UHCI_MAX_SOF_NUMBER,
   USBFRNUM);


 if (uhci->configure_hc)
  uhci->configure_hc(uhci);
}
