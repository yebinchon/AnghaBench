
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb_priv {scalar_t__ tds_cnt; scalar_t__ num_of_tds; scalar_t__ state; } ;
struct urb {struct urb_priv* hcpriv; } ;
struct td {struct ed* ed; struct urb* urb; } ;
struct fhci_hcd {TYPE_1__* timer; int lock; int hc_list; } ;
struct ed {scalar_t__ state; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int irq; } ;


 scalar_t__ FHCI_ED_HALTED ;
 void* FHCI_ED_OPER ;
 scalar_t__ FHCI_ED_SKIP ;
 scalar_t__ FHCI_ED_URB_DEL ;
 scalar_t__ URB_DEL ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int fhci_del_ed_list (struct fhci_hcd*,struct ed*) ;
 int fhci_done_td (struct urb*,struct td*) ;
 struct td* fhci_remove_td_from_done_list (int ) ;
 TYPE_2__* fhci_to_hcd (struct fhci_hcd*) ;
 int fhci_urb_complete_free (struct fhci_hcd*,struct urb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void process_done_list(unsigned long data)
{
 struct urb *urb;
 struct ed *ed;
 struct td *td;
 struct urb_priv *urb_priv;
 struct fhci_hcd *fhci = (struct fhci_hcd *)data;

 disable_irq(fhci->timer->irq);
 disable_irq(fhci_to_hcd(fhci)->irq);
 spin_lock(&fhci->lock);

 td = fhci_remove_td_from_done_list(fhci->hc_list);
 while (td != ((void*)0)) {
  urb = td->urb;
  urb_priv = urb->hcpriv;
  ed = td->ed;


  fhci_done_td(urb, td);
  urb_priv->tds_cnt++;







  if (urb_priv->tds_cnt == urb_priv->num_of_tds) {
   fhci_urb_complete_free(fhci, urb);
  } else if (urb_priv->state == URB_DEL &&
    ed->state == FHCI_ED_SKIP) {
   fhci_del_ed_list(fhci, ed);
   ed->state = FHCI_ED_OPER;
  } else if (ed->state == FHCI_ED_HALTED) {
   urb_priv->state = URB_DEL;
   ed->state = FHCI_ED_URB_DEL;
   fhci_del_ed_list(fhci, ed);
   ed->state = FHCI_ED_OPER;
  }

  td = fhci_remove_td_from_done_list(fhci->hc_list);
 }

 spin_unlock(&fhci->lock);
 enable_irq(fhci->timer->irq);
 enable_irq(fhci_to_hcd(fhci)->irq);
}
