
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int index; int * entity; } ;
struct media_entity {int dummy; } ;
struct iss_ipipe_device {int output; int input; } ;
struct TYPE_3__ {int entity; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct iss_device {TYPE_2__ ipipeif; } ;


 int EBUSY ;
 int EINVAL ;
 int IPIPE_INPUT_IPIPEIF ;
 int IPIPE_INPUT_NONE ;
 int IPIPE_OUTPUT_VP ;


 int MEDIA_LNK_FL_ENABLED ;
 int is_media_entity_v4l2_subdev (int *) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 struct iss_device* to_iss_device (struct iss_ipipe_device*) ;
 struct iss_ipipe_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ipipe_link_setup(struct media_entity *entity,
       const struct media_pad *local,
       const struct media_pad *remote, u32 flags)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct iss_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 struct iss_device *iss = to_iss_device(ipipe);

 if (!is_media_entity_v4l2_subdev(remote->entity))
  return -EINVAL;

 switch (local->index) {
 case 129:

  if (!(flags & MEDIA_LNK_FL_ENABLED)) {
   ipipe->input = IPIPE_INPUT_NONE;
   break;
  }

  if (ipipe->input != IPIPE_INPUT_NONE)
   return -EBUSY;

  if (remote->entity == &iss->ipipeif.subdev.entity)
   ipipe->input = IPIPE_INPUT_IPIPEIF;

  break;

 case 128:

  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (ipipe->output & ~IPIPE_OUTPUT_VP)
    return -EBUSY;
   ipipe->output |= IPIPE_OUTPUT_VP;
  } else {
   ipipe->output &= ~IPIPE_OUTPUT_VP;
  }
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
