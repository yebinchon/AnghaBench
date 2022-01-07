
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int pad; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct csi_state {int lock; } ;


 struct v4l2_mbus_framefmt* mipi_csis_get_format (struct csi_state*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct csi_state* mipi_sd_to_csis_state (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mipi_csis_get_fmt(struct v4l2_subdev *mipi_sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *sdformat)
{
 struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
 struct v4l2_mbus_framefmt *fmt;

 mutex_lock(&state->lock);

 fmt = mipi_csis_get_format(state, cfg, sdformat->which, sdformat->pad);

 sdformat->format = *fmt;

 mutex_unlock(&state->lock);

 return 0;
}
