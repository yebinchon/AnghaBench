
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizeimage; int bytesperline; int pixelformat; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int height; int width; int field; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct allegro_channel {int sizeimage_raw; int stride; int pixelformat; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int height; int width; } ;


 int V4L2_FIELD_NONE ;
 struct allegro_channel* fh_to_channel (void*) ;

__attribute__((used)) static int allegro_g_fmt_vid_out(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct allegro_channel *channel = fh_to_channel(fh);

 f->fmt.pix.field = V4L2_FIELD_NONE;

 f->fmt.pix.width = channel->width;
 f->fmt.pix.height = channel->height;

 f->fmt.pix.colorspace = channel->colorspace;
 f->fmt.pix.ycbcr_enc = channel->ycbcr_enc;
 f->fmt.pix.quantization = channel->quantization;
 f->fmt.pix.xfer_func = channel->xfer_func;

 f->fmt.pix.pixelformat = channel->pixelformat;
 f->fmt.pix.bytesperline = channel->stride;
 f->fmt.pix.sizeimage = channel->sizeimage_raw;

 return 0;
}
