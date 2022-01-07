
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uas_stream {int * req_out; int * req_status; void* req_in; } ;
struct f_uas {int ep_out; int ep_status; int ep_in; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* usb_ep_alloc_request (int ,int ) ;
 int usb_ep_free_request (int ,int *) ;

__attribute__((used)) static int uasp_alloc_stream_res(struct f_uas *fu, struct uas_stream *stream)
{
 stream->req_in = usb_ep_alloc_request(fu->ep_in, GFP_KERNEL);
 if (!stream->req_in)
  goto out;

 stream->req_out = usb_ep_alloc_request(fu->ep_out, GFP_KERNEL);
 if (!stream->req_out)
  goto err_out;

 stream->req_status = usb_ep_alloc_request(fu->ep_status, GFP_KERNEL);
 if (!stream->req_status)
  goto err_sts;

 return 0;
err_sts:
 usb_ep_free_request(fu->ep_status, stream->req_status);
 stream->req_status = ((void*)0);
err_out:
 usb_ep_free_request(fu->ep_out, stream->req_out);
 stream->req_out = ((void*)0);
out:
 return -ENOMEM;
}
