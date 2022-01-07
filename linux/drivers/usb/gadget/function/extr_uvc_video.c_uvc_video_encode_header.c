
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int buf_used; } ;
struct uvc_video {int fid; TYPE_1__ queue; } ;
struct uvc_buffer {int bytesused; } ;


 int UVC_STREAM_EOF ;
 int UVC_STREAM_EOH ;

__attribute__((used)) static int
uvc_video_encode_header(struct uvc_video *video, struct uvc_buffer *buf,
  u8 *data, int len)
{
 data[0] = 2;
 data[1] = UVC_STREAM_EOH | video->fid;

 if (buf->bytesused - video->queue.buf_used <= len - 2)
  data[1] |= UVC_STREAM_EOF;

 return 2;
}
