
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct fhci_hcd {int * pins; int * gpios; int pram; TYPE_1__* timer; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int NUM_GPIOS ;
 int NUM_PINS ;
 int cpm_muram_free (int ) ;
 int cpm_muram_offset (int ) ;
 struct usb_hcd* dev_get_drvdata (struct device*) ;
 int fhci_dfs_destroy (struct fhci_hcd*) ;
 int free_irq (int ,struct usb_hcd*) ;
 int gpio_free (int ) ;
 int gpio_is_valid (int ) ;
 int gtm_put_timer16 (TYPE_1__*) ;
 struct fhci_hcd* hcd_to_fhci (struct usb_hcd*) ;
 int qe_pin_free (int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int fhci_remove(struct device *dev)
{
 struct usb_hcd *hcd = dev_get_drvdata(dev);
 struct fhci_hcd *fhci = hcd_to_fhci(hcd);
 int i;
 int j;

 usb_remove_hcd(hcd);
 free_irq(fhci->timer->irq, hcd);
 gtm_put_timer16(fhci->timer);
 cpm_muram_free(cpm_muram_offset(fhci->pram));
 for (i = 0; i < NUM_GPIOS; i++) {
  if (!gpio_is_valid(fhci->gpios[i]))
   continue;
  gpio_free(fhci->gpios[i]);
 }
 for (j = 0; j < NUM_PINS; j++)
  qe_pin_free(fhci->pins[j]);
 fhci_dfs_destroy(fhci);
 usb_put_hcd(hcd);
 return 0;
}
