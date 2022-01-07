
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int op_state; } ;
__attribute__((used)) static const char *dwc2_op_state_str(struct dwc2_hsotg *hsotg)
{
 switch (hsotg->op_state) {
 case 132:
  return "a_host";
 case 130:
  return "a_suspend";
 case 131:
  return "a_peripheral";
 case 128:
  return "b_peripheral";
 case 129:
  return "b_host";
 default:
  return "unknown";
 }
}
