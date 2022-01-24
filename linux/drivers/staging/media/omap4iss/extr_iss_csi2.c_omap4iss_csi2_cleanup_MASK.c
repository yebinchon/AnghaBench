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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct iss_csi2_device {TYPE_1__ subdev; int /*<<< orphan*/  video_out; } ;
struct iss_device {struct iss_csi2_device csi2b; struct iss_csi2_device csi2a; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct iss_device *iss)
{
	struct iss_csi2_device *csi2a = &iss->csi2a;
	struct iss_csi2_device *csi2b = &iss->csi2b;

	FUNC1(&csi2a->video_out);
	FUNC0(&csi2a->subdev.entity);

	FUNC1(&csi2b->video_out);
	FUNC0(&csi2b->subdev.entity);
}