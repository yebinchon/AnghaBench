
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bm2835_mmal_dev {int v4l2_dev; scalar_t__* ctrls; } ;
struct TYPE_3__ {int (* setter ) (struct bm2835_mmal_dev*,scalar_t__,TYPE_1__*) ;int ignore_errors; } ;


 int V4L2_CTRL_COUNT ;
 int bcm2835_v4l2_debug ;
 int stub1 (struct bm2835_mmal_dev*,scalar_t__,TYPE_1__*) ;
 TYPE_1__* v4l2_ctrls ;
 int v4l2_dbg (int,int ,int *,char*,int) ;

int bm2835_mmal_set_all_camera_controls(struct bm2835_mmal_dev *dev)
{
 int c;
 int ret = 0;

 for (c = 0; c < V4L2_CTRL_COUNT; c++) {
  if ((dev->ctrls[c]) && (v4l2_ctrls[c].setter)) {
   ret = v4l2_ctrls[c].setter(dev, dev->ctrls[c],
         &v4l2_ctrls[c]);
   if (!v4l2_ctrls[c].ignore_errors && ret) {
    v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
      "Failed when setting default values for ctrl %d\n",
      c);
    break;
   }
  }
 }
 return ret;
}
