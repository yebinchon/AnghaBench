
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qtd {int qtd_list_entry; } ;
struct dwc2_qh {int dummy; } ;
struct dwc2_hsotg {int dummy; } ;


 int kfree (struct dwc2_qtd*) ;
 int list_del (int *) ;

__attribute__((used)) static inline void dwc2_hcd_qtd_unlink_and_free(struct dwc2_hsotg *hsotg,
      struct dwc2_qtd *qtd,
      struct dwc2_qh *qh)
{
 list_del(&qtd->qtd_list_entry);
 kfree(qtd);
}
