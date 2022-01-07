
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {scalar_t__ pixelformat; int field; int colorspace; int height; int width; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct TYPE_3__ {scalar_t__ pixelformat; int code; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* formats ;
 int memset (struct v4l2_mbus_framefmt*,int ,int) ;

__attribute__((used)) static void iss_video_pix_to_mbus(const struct v4l2_pix_format *pix,
      struct v4l2_mbus_framefmt *mbus)
{
 unsigned int i;

 memset(mbus, 0, sizeof(*mbus));
 mbus->width = pix->width;
 mbus->height = pix->height;





 for (i = 0; i < ARRAY_SIZE(formats) - 1; ++i) {
  if (formats[i].pixelformat == pix->pixelformat)
   break;
 }

 mbus->code = formats[i].code;
 mbus->colorspace = pix->colorspace;
 mbus->field = pix->field;
}
