
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {struct xhci_dbc* dbc; } ;
struct xhci_dbc {struct dbc_ep* eps; } ;
struct dbc_ep {int dummy; } ;


 size_t BULK_OUT ;

__attribute__((used)) static inline struct dbc_ep *get_out_ep(struct xhci_hcd *xhci)
{
 struct xhci_dbc *dbc = xhci->dbc;

 return &dbc->eps[BULK_OUT];
}
