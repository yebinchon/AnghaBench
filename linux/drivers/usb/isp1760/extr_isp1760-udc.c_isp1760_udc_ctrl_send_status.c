
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_udc {int ep0_state; } ;
struct isp1760_ep {struct isp1760_udc* udc; } ;


 int DC_CTRLFUNC ;
 int DC_ENDPIDX (int ) ;
 int DC_EPDIR ;
 int DC_EPINDEX ;
 int DC_STATUS ;
 int ISP1760_CTRL_SETUP ;
 int USB_DIR_IN ;
 int isp1760_udc_write (struct isp1760_udc*,int ,int) ;

__attribute__((used)) static void isp1760_udc_ctrl_send_status(struct isp1760_ep *ep, int dir)
{
 struct isp1760_udc *udc = ep->udc;






 isp1760_udc_write(udc, DC_EPINDEX, DC_ENDPIDX(0) |
     (dir == USB_DIR_IN ? 0 : DC_EPDIR));
 isp1760_udc_write(udc, DC_CTRLFUNC, DC_STATUS);





 udc->ep0_state = ISP1760_CTRL_SETUP;
}
