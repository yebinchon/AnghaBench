
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; } ;
struct allegro_dev {int v4l2_dev; } ;
struct allegro_channel {scalar_t__ csequence; scalar_t__ osequence; struct allegro_dev* dev; } ;


 int ALLEGRO_STATE_ENCODING ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (scalar_t__) ;
 int allegro_set_state (struct allegro_channel*,int ) ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,char*) ;
 struct allegro_channel* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int allegro_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct allegro_channel *channel = vb2_get_drv_priv(q);
 struct allegro_dev *dev = channel->dev;

 v4l2_dbg(2, debug, &dev->v4l2_dev,
   "%s: start streaming\n",
   V4L2_TYPE_IS_OUTPUT(q->type) ? "output" : "capture");

 if (V4L2_TYPE_IS_OUTPUT(q->type)) {
  channel->osequence = 0;
  allegro_set_state(channel, ALLEGRO_STATE_ENCODING);
 } else if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  channel->csequence = 0;
 }

 return 0;
}
