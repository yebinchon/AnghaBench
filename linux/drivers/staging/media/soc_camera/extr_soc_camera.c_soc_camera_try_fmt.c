
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {scalar_t__ pixelformat; void* sizeimage; int height; void* bytesperline; int width; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_host {int capabilities; TYPE_2__* ops; } ;
struct soc_camera_format_xlate {int host_fmt; } ;
struct soc_camera_device {int pdev; int parent; } ;
struct TYPE_4__ {int (* try_fmt ) (struct soc_camera_device*,struct v4l2_format*) ;} ;


 int EINVAL ;
 int SOCAM_HOST_CAP_STRIDE ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 void* max_t (int ,void*,int) ;
 int pixfmtstr (scalar_t__) ;
 struct soc_camera_format_xlate* soc_camera_xlate_by_fourcc (struct soc_camera_device*,scalar_t__) ;
 int soc_mbus_bytes_per_line (int ,int ) ;
 int soc_mbus_image_size (int ,void*,int ) ;
 int stub1 (struct soc_camera_device*,struct v4l2_format*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int u32 ;

__attribute__((used)) static int soc_camera_try_fmt(struct soc_camera_device *icd,
         struct v4l2_format *f)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 const struct soc_camera_format_xlate *xlate;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int ret;

 dev_dbg(icd->pdev, "TRY_FMT(%c%c%c%c, %ux%u)\n",
  pixfmtstr(pix->pixelformat), pix->width, pix->height);

 if (pix->pixelformat != V4L2_PIX_FMT_JPEG &&
     !(ici->capabilities & SOCAM_HOST_CAP_STRIDE)) {
  pix->bytesperline = 0;
  pix->sizeimage = 0;
 }

 ret = ici->ops->try_fmt(icd, f);
 if (ret < 0)
  return ret;

 xlate = soc_camera_xlate_by_fourcc(icd, pix->pixelformat);
 if (!xlate)
  return -EINVAL;

 ret = soc_mbus_bytes_per_line(pix->width, xlate->host_fmt);
 if (ret < 0)
  return ret;

 pix->bytesperline = max_t(u32, pix->bytesperline, ret);

 ret = soc_mbus_image_size(xlate->host_fmt, pix->bytesperline,
      pix->height);
 if (ret < 0)
  return ret;

 pix->sizeimage = max_t(u32, pix->sizeimage, ret);

 return 0;
}
