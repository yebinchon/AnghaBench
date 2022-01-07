
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int sizeimage; scalar_t__ priv; int field; int colorspace; scalar_t__ bytesperline; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;


 int V4L2_COLORSPACE_REC709 ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_MPEG ;

__attribute__((used)) static void comp_set_format_struct(struct v4l2_format *f)
{
 f->fmt.pix.width = 8;
 f->fmt.pix.height = 8;
 f->fmt.pix.pixelformat = V4L2_PIX_FMT_MPEG;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.sizeimage = 188 * 2;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_REC709;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.priv = 0;
}
