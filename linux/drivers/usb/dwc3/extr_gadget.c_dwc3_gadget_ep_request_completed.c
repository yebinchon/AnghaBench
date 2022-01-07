
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct dwc3_request {TYPE_1__ request; } ;



__attribute__((used)) static bool dwc3_gadget_ep_request_completed(struct dwc3_request *req)
{
 return req->request.actual == req->request.length;
}
