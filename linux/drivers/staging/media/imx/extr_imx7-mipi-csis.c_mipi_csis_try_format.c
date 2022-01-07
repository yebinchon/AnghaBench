
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; int code; } ;
struct csis_pix_format {int code; int pix_width_alignment; } ;
struct TYPE_2__ {int height; int width; int code; } ;
struct csi_state {TYPE_1__ format_mbus; } ;


 int CSIS_MAX_PIX_HEIGHT ;
 int CSIS_MAX_PIX_WIDTH ;
 struct csis_pix_format* find_csis_format (int ) ;
 struct csis_pix_format* mipi_csis_formats ;
 struct csi_state* mipi_sd_to_csis_state (struct v4l2_subdev*) ;
 int v4l_bound_align_image (int *,int,int ,int ,int *,int,int ,int,int ) ;

__attribute__((used)) static struct csis_pix_format const *
mipi_csis_try_format(struct v4l2_subdev *mipi_sd, struct v4l2_mbus_framefmt *mf)
{
 struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
 struct csis_pix_format const *csis_fmt;

 csis_fmt = find_csis_format(mf->code);
 if (!csis_fmt)
  csis_fmt = &mipi_csis_formats[0];

 v4l_bound_align_image(&mf->width, 1, CSIS_MAX_PIX_WIDTH,
         csis_fmt->pix_width_alignment,
         &mf->height, 1, CSIS_MAX_PIX_HEIGHT, 1,
         0);

 state->format_mbus.code = csis_fmt->code;
 state->format_mbus.width = mf->width;
 state->format_mbus.height = mf->height;

 return csis_fmt;
}
