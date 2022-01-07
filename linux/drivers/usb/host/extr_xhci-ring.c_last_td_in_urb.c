
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_td {TYPE_1__* urb; } ;
struct urb_priv {scalar_t__ num_tds_done; scalar_t__ num_tds; } ;
struct TYPE_2__ {struct urb_priv* hcpriv; } ;



__attribute__((used)) static bool last_td_in_urb(struct xhci_td *td)
{
 struct urb_priv *urb_priv = td->urb->hcpriv;

 return urb_priv->num_tds_done == urb_priv->num_tds;
}
