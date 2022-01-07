
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;



__attribute__((used)) static void fsl_noop_complete(struct usb_ep *ep, struct usb_request *req) { }
