
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uas_stream {int * req_status; int * req_out; int * req_in; } ;
struct f_uas {int ep_status; int ep_out; int ep_in; } ;


 int usb_ep_free_request (int ,int *) ;

__attribute__((used)) static void uasp_cleanup_one_stream(struct f_uas *fu, struct uas_stream *stream)
{

 if (!stream->req_in)
  return;

 usb_ep_free_request(fu->ep_in, stream->req_in);
 usb_ep_free_request(fu->ep_out, stream->req_out);
 usb_ep_free_request(fu->ep_status, stream->req_status);

 stream->req_in = ((void*)0);
 stream->req_out = ((void*)0);
 stream->req_status = ((void*)0);
}
