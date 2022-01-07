
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_dev_in_eps; int num_dev_perio_in_ep; scalar_t__ en_multiple_tx_fifo; } ;
struct dwc2_hsotg {TYPE_1__ hw_params; } ;



int dwc2_hsotg_tx_fifo_count(struct dwc2_hsotg *hsotg)
{
 if (hsotg->hw_params.en_multiple_tx_fifo)

  return hsotg->hw_params.num_dev_in_eps;
 else

  return hsotg->hw_params.num_dev_perio_in_ep;
}
