
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct s3c_hsudc_req {int queue; } ;


 int WARN_ON (int) ;
 int kfree (struct s3c_hsudc_req*) ;
 int list_empty (int *) ;
 struct s3c_hsudc_req* our_req (struct usb_request*) ;

__attribute__((used)) static void s3c_hsudc_free_request(struct usb_ep *ep, struct usb_request *_req)
{
 struct s3c_hsudc_req *hsreq;

 hsreq = our_req(_req);
 WARN_ON(!list_empty(&hsreq->queue));
 kfree(hsreq);
}
