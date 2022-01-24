#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct v4l2_subdev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct media_entity* FUNC1 (struct media_entity*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct v4l2_subdev* FUNC2 (struct media_entity*) ; 

struct v4l2_subdev *
FUNC3(struct media_entity *start_entity, u32 grp_id,
			  bool upstream)
{
	struct media_entity *me;

	me = FUNC1(start_entity, grp_id, 0, upstream);
	if (!me)
		return FUNC0(-ENODEV);

	return FUNC2(me);
}