
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct mmal_fmt {scalar_t__ fourcc; } ;


 unsigned int ARRAY_SIZE (struct mmal_fmt*) ;
 struct mmal_fmt* formats ;

__attribute__((used)) static struct mmal_fmt *get_format(struct v4l2_format *f)
{
 struct mmal_fmt *fmt;
 unsigned int k;

 for (k = 0; k < ARRAY_SIZE(formats); k++) {
  fmt = &formats[k];
  if (fmt->fourcc == f->fmt.pix.pixelformat)
   return fmt;
 }

 return ((void*)0);
}
