
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frmsizeenum {int dummy; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_device {int parent; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_2__ {int (* enum_framesizes ) (struct soc_camera_device*,struct v4l2_frmsizeenum*) ;} ;


 int stub1 (struct soc_camera_device*,struct v4l2_frmsizeenum*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int soc_camera_enum_framesizes(struct file *file, void *fh,
      struct v4l2_frmsizeenum *fsize)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);

 return ici->ops->enum_framesizes(icd, fsize);
}
