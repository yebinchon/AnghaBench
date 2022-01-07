
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_udc {int ep0_state; int dev; struct qe_ep* eps; } ;
struct qe_req {int dummy; } ;
struct qe_ep {int dummy; } ;





 int USB_DIR_IN ;
 int USB_DIR_OUT ;


 int dev_vdbg (int ,char*) ;
 int done (struct qe_ep*,struct qe_req*,int ) ;
 int ep0_prime_status (struct qe_udc*,int ) ;
 int qe_ep0_stall (struct qe_udc*) ;

__attribute__((used)) static void ep0_req_complete(struct qe_udc *udc, struct qe_req *req)
{
 struct qe_ep *ep = &udc->eps[0];


 switch (udc->ep0_state) {
 case 130:
  done(ep, req, 0);

  if (ep0_prime_status(udc, USB_DIR_OUT))
   qe_ep0_stall(udc);
  break;

 case 132:
  done(ep, req, 0);
  udc->ep0_state = 128;
  break;

 case 131:
  done(ep, req, 0);

  if (ep0_prime_status(udc, USB_DIR_IN))
   qe_ep0_stall(udc);
  break;

 case 129:
  done(ep, req, 0);
  udc->ep0_state = 128;
  break;

 case 128:
  dev_vdbg(udc->dev, "Unexpected interrupt\n");
  break;

 default:
  qe_ep0_stall(udc);
  break;
 }
}
