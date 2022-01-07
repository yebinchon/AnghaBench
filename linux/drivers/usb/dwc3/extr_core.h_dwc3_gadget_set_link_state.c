
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int dummy; } ;
typedef enum dwc3_link_state { ____Placeholder_dwc3_link_state } dwc3_link_state ;



__attribute__((used)) static inline int dwc3_gadget_set_link_state(struct dwc3 *dwc,
  enum dwc3_link_state state)
{ return 0; }
