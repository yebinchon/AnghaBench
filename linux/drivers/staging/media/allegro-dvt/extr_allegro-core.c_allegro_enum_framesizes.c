
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int step_width; int step_height; int max_height; int min_height; int max_width; int min_width; } ;
struct v4l2_frmsizeenum {int pixel_format; TYPE_1__ stepwise; int type; scalar_t__ index; } ;
struct file {int dummy; } ;


 int ALLEGRO_HEIGHT_MAX ;
 int ALLEGRO_HEIGHT_MIN ;
 int ALLEGRO_WIDTH_MAX ;
 int ALLEGRO_WIDTH_MIN ;
 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_CONTINUOUS ;



__attribute__((used)) static int allegro_enum_framesizes(struct file *file, void *fh,
       struct v4l2_frmsizeenum *fsize)
{
 switch (fsize->pixel_format) {
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 if (fsize->index)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
 fsize->stepwise.min_width = ALLEGRO_WIDTH_MIN;
 fsize->stepwise.max_width = ALLEGRO_WIDTH_MAX;
 fsize->stepwise.step_width = 1;
 fsize->stepwise.min_height = ALLEGRO_HEIGHT_MIN;
 fsize->stepwise.max_height = ALLEGRO_HEIGHT_MAX;
 fsize->stepwise.step_height = 1;

 return 0;
}
