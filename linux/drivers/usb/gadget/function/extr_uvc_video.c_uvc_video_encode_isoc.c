
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buf_used; } ;
struct uvc_video {int req_size; int fid; TYPE_1__ queue; } ;
struct uvc_buffer {scalar_t__ bytesused; int state; } ;
struct usb_request {int length; void* buf; } ;


 int UVC_BUF_STATE_DONE ;
 int UVC_STREAM_FID ;
 int uvc_video_encode_data (struct uvc_video*,struct uvc_buffer*,void*,int) ;
 int uvc_video_encode_header (struct uvc_video*,struct uvc_buffer*,void*,int) ;
 int uvcg_queue_next_buffer (TYPE_1__*,struct uvc_buffer*) ;

__attribute__((used)) static void
uvc_video_encode_isoc(struct usb_request *req, struct uvc_video *video,
  struct uvc_buffer *buf)
{
 void *mem = req->buf;
 int len = video->req_size;
 int ret;


 ret = uvc_video_encode_header(video, buf, mem, len);
 mem += ret;
 len -= ret;


 ret = uvc_video_encode_data(video, buf, mem, len);
 len -= ret;

 req->length = video->req_size - len;

 if (buf->bytesused == video->queue.buf_used) {
  video->queue.buf_used = 0;
  buf->state = UVC_BUF_STATE_DONE;
  uvcg_queue_next_buffer(&video->queue, buf);
  video->fid ^= UVC_STREAM_FID;
 }
}
