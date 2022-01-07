
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_gadget_ep_cmd_params {int dummy; } ;
struct dwc3_ep {int dummy; } ;



__attribute__((used)) static inline int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
  struct dwc3_gadget_ep_cmd_params *params)
{ return 0; }
