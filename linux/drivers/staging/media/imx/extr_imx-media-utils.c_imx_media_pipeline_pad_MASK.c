#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct video_device {TYPE_1__* queue; } ;
struct v4l2_subdev {int grp_id; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int num_pads; struct media_pad* pads; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int MEDIA_PAD_FL_SINK ; 
 int MEDIA_PAD_FL_SOURCE ; 
 scalar_t__ FUNC0 (struct media_entity*) ; 
 scalar_t__ FUNC1 (struct media_entity*) ; 
 struct media_pad* FUNC2 (struct media_pad*) ; 
 struct v4l2_subdev* FUNC3 (struct media_entity*) ; 
 struct video_device* FUNC4 (struct media_entity*) ; 

struct media_pad *
FUNC5(struct media_entity *start_entity, u32 grp_id,
		       enum v4l2_buf_type buftype, bool upstream)
{
	struct media_entity *me = start_entity;
	struct media_pad *pad = NULL;
	struct video_device *vfd;
	struct v4l2_subdev *sd;
	int i;

	for (i = 0; i < me->num_pads; i++) {
		struct media_pad *spad = &me->pads[i];

		if ((upstream && !(spad->flags & MEDIA_PAD_FL_SINK)) ||
		    (!upstream && !(spad->flags & MEDIA_PAD_FL_SOURCE)))
			continue;

		pad = FUNC2(spad);
		if (!pad)
			continue;

		if (grp_id) {
			if (FUNC0(pad->entity)) {
				sd = FUNC3(pad->entity);
				if (sd->grp_id & grp_id)
					return pad;
			}

			return FUNC5(pad->entity, grp_id,
						      buftype, upstream);
		} else if (buftype) {
			if (FUNC1(pad->entity)) {
				vfd = FUNC4(pad->entity);
				if (buftype == vfd->queue->type)
					return pad;
			}

			return FUNC5(pad->entity, grp_id,
						      buftype, upstream);
		} else {
			return pad;
		}
	}

	return NULL;
}