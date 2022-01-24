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
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_device {int /*<<< orphan*/ * user_formats; scalar_t__ num_user_formats; int /*<<< orphan*/ * current_fmt; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put_formats ) (struct soc_camera_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct soc_camera_device*) ; 
 struct soc_camera_host* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC1(icd->parent);

	if (ici->ops->put_formats)
		ici->ops->put_formats(icd);
	icd->current_fmt = NULL;
	icd->num_user_formats = 0;
	FUNC2(icd->user_formats);
	icd->user_formats = NULL;
}