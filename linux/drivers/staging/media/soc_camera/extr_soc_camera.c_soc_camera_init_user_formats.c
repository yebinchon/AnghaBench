
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_subdev_mbus_code_enum {unsigned int index; int code; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_format_xlate {int dummy; } ;
struct soc_camera_device {unsigned int num_user_formats; TYPE_2__* user_formats; TYPE_2__* current_fmt; int pdev; int parent; } ;
struct TYPE_7__ {int code; scalar_t__ host_fmt; } ;
struct TYPE_6__ {int (* get_formats ) (struct soc_camera_device*,unsigned int,TYPE_2__*) ;} ;


 int ENOMEM ;
 int ENXIO ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int array_size (unsigned int,int) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int enum_mbus_code ;
 int pad ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 scalar_t__ soc_mbus_get_fmtdesc (int ) ;
 int stub1 (struct soc_camera_device*,unsigned int,TYPE_2__*) ;
 int stub2 (struct soc_camera_device*,unsigned int,TYPE_2__*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_mbus_code_enum*) ;
 int vfree (TYPE_2__*) ;
 TYPE_2__* vmalloc (int ) ;

__attribute__((used)) static int soc_camera_init_user_formats(struct soc_camera_device *icd)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 unsigned int i, fmts = 0, raw_fmts = 0;
 int ret;
 struct v4l2_subdev_mbus_code_enum code = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };

 while (!v4l2_subdev_call(sd, pad, enum_mbus_code, ((void*)0), &code)) {
  raw_fmts++;
  code.index++;
 }

 if (!ici->ops->get_formats)




  fmts = raw_fmts;
 else




  for (i = 0; i < raw_fmts; i++) {
   ret = ici->ops->get_formats(icd, i, ((void*)0));
   if (ret < 0)
    return ret;
   fmts += ret;
  }

 if (!fmts)
  return -ENXIO;

 icd->user_formats =
  vmalloc(array_size(fmts,
       sizeof(struct soc_camera_format_xlate)));
 if (!icd->user_formats)
  return -ENOMEM;

 dev_dbg(icd->pdev, "Found %d supported formats.\n", fmts);


 fmts = 0;
 for (i = 0; i < raw_fmts; i++)
  if (!ici->ops->get_formats) {
   code.index = i;
   v4l2_subdev_call(sd, pad, enum_mbus_code, ((void*)0), &code);
   icd->user_formats[fmts].host_fmt =
    soc_mbus_get_fmtdesc(code.code);
   if (icd->user_formats[fmts].host_fmt)
    icd->user_formats[fmts++].code = code.code;
  } else {
   ret = ici->ops->get_formats(icd, i,
          &icd->user_formats[fmts]);
   if (ret < 0)
    goto egfmt;
   fmts += ret;
  }

 icd->num_user_formats = fmts;
 icd->current_fmt = &icd->user_formats[0];

 return 0;

egfmt:
 vfree(icd->user_formats);
 return ret;
}
