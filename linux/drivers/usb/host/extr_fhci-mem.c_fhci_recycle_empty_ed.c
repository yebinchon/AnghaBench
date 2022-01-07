
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fhci_hcd {int empty_eds; } ;
struct ed {int node; } ;


 int init_ed (struct ed*) ;
 int list_add (int *,int *) ;

void fhci_recycle_empty_ed(struct fhci_hcd *fhci, struct ed *ed)
{
 init_ed(ed);
 list_add(&ed->node, &fhci->empty_eds);
}
