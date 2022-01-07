
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {unsigned int bytesperline; int width; int height; int sizeimage; int pixelformat; int field; int colorspace; } ;
struct v4l2_mbus_framefmt {int width; int height; scalar_t__ code; int field; int colorspace; } ;
struct iss_video {int bpl_alignment; int bpl_zero_padding; int bpl_max; } ;
struct TYPE_3__ {scalar_t__ code; unsigned int bpp; int pixelformat; } ;


 int ALIGN (unsigned int,int) ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int V4L2_PIX_FMT_NV12 ;
 unsigned int clamp (unsigned int,unsigned int,int ) ;
 TYPE_1__* formats ;
 int memset (struct v4l2_pix_format*,int ,int) ;

__attribute__((used)) static unsigned int iss_video_mbus_to_pix(const struct iss_video *video,
       const struct v4l2_mbus_framefmt *mbus,
       struct v4l2_pix_format *pix)
{
 unsigned int bpl = pix->bytesperline;
 unsigned int min_bpl;
 unsigned int i;

 memset(pix, 0, sizeof(*pix));
 pix->width = mbus->width;
 pix->height = mbus->height;





 for (i = 0; i < ARRAY_SIZE(formats) - 1; ++i) {
  if (formats[i].code == mbus->code)
   break;
 }

 min_bpl = pix->width * ALIGN(formats[i].bpp, 8) / 8;






 if (video->bpl_max)
  bpl = clamp(bpl, min_bpl, video->bpl_max);
 else
  bpl = min_bpl;

 if (!video->bpl_zero_padding || bpl != min_bpl)
  bpl = ALIGN(bpl, video->bpl_alignment);

 pix->pixelformat = formats[i].pixelformat;
 pix->bytesperline = bpl;
 pix->sizeimage = pix->bytesperline * pix->height;
 pix->colorspace = mbus->colorspace;
 pix->field = mbus->field;


 if (pix->pixelformat == V4L2_PIX_FMT_NV12)
  pix->sizeimage += (pix->bytesperline * pix->height) / 2;

 return bpl - min_bpl;
}
