
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {int td_list; int node; struct urb* urb; } ;
struct urb {struct urb_priv* hcpriv; } ;
struct uhci_hcd {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct urb_priv* kmem_cache_zalloc (int ,int ) ;
 int uhci_up_cachep ;

__attribute__((used)) static inline struct urb_priv *uhci_alloc_urb_priv(struct uhci_hcd *uhci,
  struct urb *urb)
{
 struct urb_priv *urbp;

 urbp = kmem_cache_zalloc(uhci_up_cachep, GFP_ATOMIC);
 if (!urbp)
  return ((void*)0);

 urbp->urb = urb;
 urb->hcpriv = urbp;

 INIT_LIST_HEAD(&urbp->node);
 INIT_LIST_HEAD(&urbp->td_list);

 return urbp;
}
