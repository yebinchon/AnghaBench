
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int height; int width; } ;
struct TYPE_2__ {int height; int width; } ;
struct ipu_image {TYPE_1__ rect; int pix; } ;


 int imx_media_mbus_fmt_to_pix_fmt (int *,struct v4l2_mbus_framefmt*,int *) ;
 int memset (struct ipu_image*,int ,int) ;

int imx_media_mbus_fmt_to_ipu_image(struct ipu_image *image,
        struct v4l2_mbus_framefmt *mbus)
{
 int ret;

 memset(image, 0, sizeof(*image));

 ret = imx_media_mbus_fmt_to_pix_fmt(&image->pix, mbus, ((void*)0));
 if (ret)
  return ret;

 image->rect.width = mbus->width;
 image->rect.height = mbus->height;

 return 0;
}
