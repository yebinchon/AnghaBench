
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {struct list_head* host_priv; } ;
struct list_head {int dummy; } ;



__attribute__((used)) static inline struct list_head *
to_pad_vdev_list(struct v4l2_subdev *sd, int pad_index)
{
 struct list_head *vdev_list = sd->host_priv;

 return vdev_list ? &vdev_list[pad_index] : ((void*)0);
}
