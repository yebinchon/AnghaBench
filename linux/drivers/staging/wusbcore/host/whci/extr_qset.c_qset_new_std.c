
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_std {int list_node; int * qtd; struct urb* urb; } ;
struct whc_qset {int stds; } ;
struct whc {int dummy; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct whc_std* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct whc_std *qset_new_std(struct whc *whc, struct whc_qset *qset,
        struct urb *urb, gfp_t mem_flags)
{
 struct whc_std *std;

 std = kzalloc(sizeof(struct whc_std), mem_flags);
 if (std == ((void*)0))
  return ((void*)0);

 std->urb = urb;
 std->qtd = ((void*)0);

 INIT_LIST_HEAD(&std->list_node);
 list_add_tail(&std->list_node, &qset->stds);

 return std;
}
