
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int dr_mode; } ;





 int dwc3_drd_exit (struct dwc3*) ;
 int dwc3_gadget_exit (struct dwc3*) ;
 int dwc3_host_exit (struct dwc3*) ;

__attribute__((used)) static void dwc3_core_exit_mode(struct dwc3 *dwc)
{
 switch (dwc->dr_mode) {
 case 128:
  dwc3_gadget_exit(dwc);
  break;
 case 130:
  dwc3_host_exit(dwc);
  break;
 case 129:
  dwc3_drd_exit(dwc);
  break;
 default:

  break;
 }
}
