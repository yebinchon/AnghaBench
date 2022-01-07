
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ length; scalar_t__ actual; } ;
struct usba_request {TYPE_1__ req; } ;
struct usba_ep {int dummy; } ;


 int DMA_BUF_LEN ;
 scalar_t__ USBA_BFEXT (int ,int ) ;

__attribute__((used)) static void
usba_update_req(struct usba_ep *ep, struct usba_request *req, u32 status)
{
 req->req.actual = req->req.length - USBA_BFEXT(DMA_BUF_LEN, status);
}
