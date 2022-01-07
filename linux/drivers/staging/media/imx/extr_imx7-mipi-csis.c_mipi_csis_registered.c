
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int entity; } ;
struct csi_state {TYPE_2__* pads; TYPE_1__ mipi_sd; } ;
struct TYPE_4__ {int flags; } ;


 int CSIS_PADS_NUM ;
 size_t CSIS_PAD_SINK ;
 size_t CSIS_PAD_SOURCE ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int media_entity_pads_init (int *,int ,TYPE_2__*) ;
 struct csi_state* mipi_sd_to_csis_state (struct v4l2_subdev*) ;

__attribute__((used)) static int mipi_csis_registered(struct v4l2_subdev *mipi_sd)
{
 struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);

 state->pads[CSIS_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 state->pads[CSIS_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

 return media_entity_pads_init(&state->mipi_sd.entity, CSIS_PADS_NUM,
          state->pads);
}
