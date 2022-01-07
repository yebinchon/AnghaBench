
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct s3c_hsudc_req {struct usb_request req; int queue; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct s3c_hsudc_req* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *s3c_hsudc_alloc_request(struct usb_ep *_ep,
      gfp_t gfp_flags)
{
 struct s3c_hsudc_req *hsreq;

 hsreq = kzalloc(sizeof(*hsreq), gfp_flags);
 if (!hsreq)
  return ((void*)0);

 INIT_LIST_HEAD(&hsreq->queue);
 return &hsreq->req;
}
