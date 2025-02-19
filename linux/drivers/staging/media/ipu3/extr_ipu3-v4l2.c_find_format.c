
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix_mp; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct imgu_fmt {scalar_t__ fourcc; scalar_t__ type; } ;


 unsigned int ARRAY_SIZE (struct imgu_fmt const*) ;
 size_t DEF_VID_CAPTURE ;
 size_t DEF_VID_OUTPUT ;
 scalar_t__ VID_CAPTURE ;
 struct imgu_fmt const* formats ;

__attribute__((used)) static const struct imgu_fmt *find_format(struct v4l2_format *f, u32 type)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(formats); i++) {
  if (formats[i].fourcc == f->fmt.pix_mp.pixelformat &&
      formats[i].type == type)
   return &formats[i];
 }

 return type == VID_CAPTURE ? &formats[DEF_VID_CAPTURE] :
         &formats[DEF_VID_OUTPUT];
}
