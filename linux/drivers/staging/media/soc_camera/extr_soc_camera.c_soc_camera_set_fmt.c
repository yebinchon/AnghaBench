
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_pix_format {scalar_t__ pixelformat; int field; int colorspace; int sizeimage; int bytesperline; int height; int width; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_host {TYPE_4__* ops; } ;
struct soc_camera_device {int user_height; int user_width; int pdev; int field; int colorspace; int sizeimage; int bytesperline; TYPE_3__* current_fmt; int parent; } ;
struct TYPE_8__ {int (* set_fmt ) (struct soc_camera_device*,struct v4l2_format*) ;int (* set_bus_param ) (struct soc_camera_device*) ;} ;
struct TYPE_7__ {TYPE_2__* host_fmt; } ;
struct TYPE_6__ {scalar_t__ fourcc; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int ,int ,...) ;
 int dev_err (int ,char*) ;
 int pixfmtstr (scalar_t__) ;
 int soc_camera_try_fmt (struct soc_camera_device*,struct v4l2_format*) ;
 int stub1 (struct soc_camera_device*,struct v4l2_format*) ;
 int stub2 (struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int soc_camera_set_fmt(struct soc_camera_device *icd,
         struct v4l2_format *f)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int ret;

 dev_dbg(icd->pdev, "S_FMT(%c%c%c%c, %ux%u)\n",
  pixfmtstr(pix->pixelformat), pix->width, pix->height);


 ret = soc_camera_try_fmt(icd, f);
 if (ret < 0)
  return ret;

 ret = ici->ops->set_fmt(icd, f);
 if (ret < 0) {
  return ret;
 } else if (!icd->current_fmt ||
     icd->current_fmt->host_fmt->fourcc != pix->pixelformat) {
  dev_err(icd->pdev,
   "Host driver hasn't set up current format correctly!\n");
  return -EINVAL;
 }

 icd->user_width = pix->width;
 icd->user_height = pix->height;
 icd->bytesperline = pix->bytesperline;
 icd->sizeimage = pix->sizeimage;
 icd->colorspace = pix->colorspace;
 icd->field = pix->field;

 dev_dbg(icd->pdev, "set width: %d height: %d\n",
  icd->user_width, icd->user_height);


 return ici->ops->set_bus_param(icd);
}
