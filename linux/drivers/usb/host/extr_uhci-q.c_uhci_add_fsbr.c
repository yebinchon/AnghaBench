
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {int fsbr; } ;
struct urb {struct urb_priv* hcpriv; } ;
struct uhci_hcd {int dummy; } ;



__attribute__((used)) static void uhci_add_fsbr(struct uhci_hcd *uhci, struct urb *urb)
{
 struct urb_priv *urbp = urb->hcpriv;

 urbp->fsbr = 1;
}
