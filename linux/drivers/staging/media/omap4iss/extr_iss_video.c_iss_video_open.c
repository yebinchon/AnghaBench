
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vb2_queue {int io_modes; int buf_struct_size; int dev; int timestamp_flags; int * mem_ops; int * ops; struct iss_video_fh* drv_priv; int type; } ;
struct TYPE_6__ {int denominator; } ;
struct TYPE_9__ {int type; } ;
struct iss_video_fh {int vfh; struct iss_video* video; TYPE_1__ timeperframe; TYPE_5__ format; struct vb2_queue queue; } ;
struct TYPE_7__ {int entity; } ;
struct iss_video {int type; TYPE_3__* iss; TYPE_2__ video; } ;
struct iss_buffer {int dummy; } ;
struct file {int * private_data; } ;
struct TYPE_8__ {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int iss_video_vb2ops ;
 int kfree (struct iss_video_fh*) ;
 struct iss_video_fh* kzalloc (int,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int omap4iss_get (TYPE_3__*) ;
 int omap4iss_put (TYPE_3__*) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_fh_init (int *,TYPE_2__*) ;
 int v4l2_pipeline_pm_use (int *,int) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 struct iss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int iss_video_open(struct file *file)
{
 struct iss_video *video = video_drvdata(file);
 struct iss_video_fh *handle;
 struct vb2_queue *q;
 int ret = 0;

 handle = kzalloc(sizeof(*handle), GFP_KERNEL);
 if (!handle)
  return -ENOMEM;

 v4l2_fh_init(&handle->vfh, &video->video);
 v4l2_fh_add(&handle->vfh);


 if (!omap4iss_get(video->iss)) {
  ret = -EBUSY;
  goto done;
 }

 ret = v4l2_pipeline_pm_use(&video->video.entity, 1);
 if (ret < 0) {
  omap4iss_put(video->iss);
  goto done;
 }

 q = &handle->queue;

 q->type = video->type;
 q->io_modes = VB2_MMAP | VB2_DMABUF;
 q->drv_priv = handle;
 q->ops = &iss_video_vb2ops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->buf_struct_size = sizeof(struct iss_buffer);
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->dev = video->iss->dev;

 ret = vb2_queue_init(q);
 if (ret) {
  omap4iss_put(video->iss);
  goto done;
 }

 memset(&handle->format, 0, sizeof(handle->format));
 handle->format.type = video->type;
 handle->timeperframe.denominator = 1;

 handle->video = video;
 file->private_data = &handle->vfh;

done:
 if (ret < 0) {
  v4l2_fh_del(&handle->vfh);
  v4l2_fh_exit(&handle->vfh);
  kfree(handle);
 }

 return ret;
}
