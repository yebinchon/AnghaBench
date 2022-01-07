
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;


 unsigned int GHWCFG2_OP_MODE_NO_SRP_CAPABLE_DEVICE ;
 unsigned int GHWCFG2_OP_MODE_SRP_CAPABLE_DEVICE ;
 unsigned int dwc2_op_mode (struct dwc2_hsotg*) ;

bool dwc2_hw_is_device(struct dwc2_hsotg *hsotg)
{
 unsigned int op_mode = dwc2_op_mode(hsotg);

 return (op_mode == GHWCFG2_OP_MODE_SRP_CAPABLE_DEVICE) ||
  (op_mode == GHWCFG2_OP_MODE_NO_SRP_CAPABLE_DEVICE);
}
