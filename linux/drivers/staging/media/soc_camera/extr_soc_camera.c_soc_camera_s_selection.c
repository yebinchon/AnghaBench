
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ width; scalar_t__ height; } ;
struct v4l2_selection {scalar_t__ type; scalar_t__ target; TYPE_2__ r; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_device {scalar_t__ user_width; scalar_t__ user_height; struct file* streamer; int vb2_vidq; int parent; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_3__ {int (* set_liveselection ) (struct soc_camera_device*,struct v4l2_selection*) ;int (* set_selection ) (struct soc_camera_device*,struct v4l2_selection*) ;} ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_SEL_TGT_COMPOSE ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int stub1 (struct soc_camera_device*,struct v4l2_selection*) ;
 int stub2 (struct soc_camera_device*,struct v4l2_selection*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 scalar_t__ vb2_is_streaming (int *) ;

__attribute__((used)) static int soc_camera_s_selection(struct file *file, void *fh,
      struct v4l2_selection *s)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 int ret;


 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
     (s->target != V4L2_SEL_TGT_COMPOSE &&
      s->target != V4L2_SEL_TGT_CROP))
  return -EINVAL;

 if (s->target == V4L2_SEL_TGT_COMPOSE) {

  if (vb2_is_streaming(&icd->vb2_vidq) &&
      (icd->user_width != s->r.width ||
       icd->user_height != s->r.height))
   return -EBUSY;





  if (icd->streamer && icd->streamer != file)
   return -EBUSY;
 }

 if (s->target == V4L2_SEL_TGT_CROP &&
     vb2_is_streaming(&icd->vb2_vidq) &&
     ici->ops->set_liveselection)
  ret = ici->ops->set_liveselection(icd, s);
 else
  ret = ici->ops->set_selection(icd, s);
 if (!ret &&
     s->target == V4L2_SEL_TGT_COMPOSE) {
  icd->user_width = s->r.width;
  icd->user_height = s->r.height;
  if (!icd->streamer)
   icd->streamer = file;
 }

 return ret;
}
