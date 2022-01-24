#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct media_graph {int dummy; } ;
struct TYPE_3__ {struct media_device* mdev; } ;
struct media_entity {TYPE_1__ graph_obj; } ;
struct media_device {int /*<<< orphan*/  graph_mutex; } ;
struct TYPE_4__ {struct media_entity entity; } ;
struct iss_video {scalar_t__ type; TYPE_2__ video; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct media_graph*) ; 
 scalar_t__ FUNC3 (struct media_graph*,struct media_device*) ; 
 struct media_entity* FUNC4 (struct media_graph*) ; 
 int /*<<< orphan*/  FUNC5 (struct media_graph*,struct media_entity*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct iss_video* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iss_video *
FUNC9(struct iss_video *video)
{
	struct media_graph graph;
	struct media_entity *entity = &video->video.entity;
	struct media_device *mdev = entity->graph_obj.mdev;
	struct iss_video *far_end = NULL;

	FUNC6(&mdev->graph_mutex);

	if (FUNC3(&graph, mdev)) {
		FUNC7(&mdev->graph_mutex);
		return NULL;
	}

	FUNC5(&graph, entity);

	while ((entity = FUNC4(&graph))) {
		if (entity == &video->video.entity)
			continue;

		if (!FUNC0(entity))
			continue;

		far_end = FUNC8(FUNC1(entity));
		if (far_end->type != video->type)
			break;

		far_end = NULL;
	}

	FUNC7(&mdev->graph_mutex);

	FUNC2(&graph);

	return far_end;
}