
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v4l2_fmtdesc {unsigned int index; int pixelformat; } ;
struct TYPE_3__ {scalar_t__ type; int fourcc; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* formats ;

__attribute__((used)) static int enum_fmts(struct v4l2_fmtdesc *f, u32 type)
{
 unsigned int i, j;

 for (i = j = 0; i < ARRAY_SIZE(formats); ++i) {
  if (formats[i].type == type) {
   if (j == f->index)
    break;
   ++j;
  }
 }

 if (i < ARRAY_SIZE(formats)) {
  f->pixelformat = formats[i].fourcc;
  return 0;
 }

 return -EINVAL;
}
