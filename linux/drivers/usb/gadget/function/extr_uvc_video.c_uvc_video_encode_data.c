
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uvc_video_queue {int buf_used; } ;
struct uvc_video {struct uvc_video_queue queue; } ;
struct uvc_buffer {int bytesused; void* mem; } ;


 int memcpy (int *,void*,unsigned int) ;
 unsigned int min (unsigned int,int) ;

__attribute__((used)) static int
uvc_video_encode_data(struct uvc_video *video, struct uvc_buffer *buf,
  u8 *data, int len)
{
 struct uvc_video_queue *queue = &video->queue;
 unsigned int nbytes;
 void *mem;


 mem = buf->mem + queue->buf_used;
 nbytes = min((unsigned int)len, buf->bytesused - queue->buf_used);

 memcpy(data, mem, nbytes);
 queue->buf_used += nbytes;

 return nbytes;
}
