
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_mbus_framefmt {scalar_t__ width; scalar_t__ height; } ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;


 int H_ALIGN_SRC ;
 int MAX_H_SRC ;
 int MAX_W_SRC ;
 int S_ALIGN ;
 int W_ALIGN_SRC ;
 scalar_t__ ipu_rot_mode_is_irt (int) ;
 int v4l_bound_align_image (scalar_t__*,int,int ,int ,int*,int,int ,int ,int ) ;

__attribute__((used)) static bool prp_bound_align_output(struct v4l2_mbus_framefmt *outfmt,
       struct v4l2_mbus_framefmt *infmt,
       enum ipu_rotate_mode rot_mode)
{
 u32 orig_width = outfmt->width;
 u32 orig_height = outfmt->height;

 if (ipu_rot_mode_is_irt(rot_mode))
  v4l_bound_align_image(&outfmt->width,
          infmt->height / 4, MAX_H_SRC,
          W_ALIGN_SRC,
          &outfmt->height,
          infmt->width / 4, MAX_W_SRC,
          W_ALIGN_SRC, S_ALIGN);
 else
  v4l_bound_align_image(&outfmt->width,
          infmt->width / 4, MAX_W_SRC,
          W_ALIGN_SRC,
          &outfmt->height,
          infmt->height / 4, MAX_H_SRC,
          H_ALIGN_SRC, S_ALIGN);

 return outfmt->width != orig_width || outfmt->height != orig_height;
}
