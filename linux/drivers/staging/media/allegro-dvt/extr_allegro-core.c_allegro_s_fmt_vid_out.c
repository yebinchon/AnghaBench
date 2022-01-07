
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xfer_func; int quantization; int ycbcr_enc; int colorspace; int sizeimage; int bytesperline; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct allegro_channel {int height; int width; int sizeimage_encoded; int level; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int sizeimage_raw; int stride; } ;


 int allegro_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;
 int estimate_stream_size (int ,int ) ;
 struct allegro_channel* fh_to_channel (void*) ;
 int select_minimum_h264_level (int ,int ) ;

__attribute__((used)) static int allegro_s_fmt_vid_out(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct allegro_channel *channel = fh_to_channel(fh);
 int err;

 err = allegro_try_fmt_vid_out(file, fh, f);
 if (err)
  return err;

 channel->width = f->fmt.pix.width;
 channel->height = f->fmt.pix.height;
 channel->stride = f->fmt.pix.bytesperline;
 channel->sizeimage_raw = f->fmt.pix.sizeimage;

 channel->colorspace = f->fmt.pix.colorspace;
 channel->ycbcr_enc = f->fmt.pix.ycbcr_enc;
 channel->quantization = f->fmt.pix.quantization;
 channel->xfer_func = f->fmt.pix.xfer_func;

 channel->level =
  select_minimum_h264_level(channel->width, channel->height);
 channel->sizeimage_encoded =
  estimate_stream_size(channel->width, channel->height);

 return 0;
}
