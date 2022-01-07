
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int bytesperline; int sizeimage; int pixelformat; int field; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;


 int ALLEGRO_HEIGHT_MAX ;
 int ALLEGRO_HEIGHT_MIN ;
 int ALLEGRO_WIDTH_MAX ;
 int ALLEGRO_WIDTH_MIN ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_NV12 ;
 int __u32 ;
 void* clamp_t (int ,int,int ,int ) ;
 int round_up (int,int) ;

__attribute__((used)) static int allegro_try_fmt_vid_out(struct file *file, void *fh,
       struct v4l2_format *f)
{
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.width = clamp_t(__u32, f->fmt.pix.width,
       ALLEGRO_WIDTH_MIN, ALLEGRO_WIDTH_MAX);
 f->fmt.pix.height = clamp_t(__u32, f->fmt.pix.height,
        ALLEGRO_HEIGHT_MIN, ALLEGRO_HEIGHT_MAX);

 f->fmt.pix.pixelformat = V4L2_PIX_FMT_NV12;
 f->fmt.pix.bytesperline = round_up(f->fmt.pix.width, 32);
 f->fmt.pix.sizeimage =
  f->fmt.pix.bytesperline * f->fmt.pix.height * 3 / 2;

 return 0;
}
