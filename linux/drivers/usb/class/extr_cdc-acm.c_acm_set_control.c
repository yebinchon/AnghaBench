
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm {int quirks; } ;


 int EOPNOTSUPP ;
 int QUIRK_CONTROL_LINE_STATE ;
 int USB_CDC_REQ_SET_CONTROL_LINE_STATE ;
 int acm_ctrl_msg (struct acm*,int ,int,int *,int ) ;

__attribute__((used)) static inline int acm_set_control(struct acm *acm, int control)
{
 if (acm->quirks & QUIRK_CONTROL_LINE_STATE)
  return -EOPNOTSUPP;

 return acm_ctrl_msg(acm, USB_CDC_REQ_SET_CONTROL_LINE_STATE,
   control, ((void*)0), 0);
}
