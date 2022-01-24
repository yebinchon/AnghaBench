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
struct soc_camera_host {struct soc_camera_device* icd; TYPE_1__* ops; } ;
struct soc_camera_device {int /*<<< orphan*/  clk; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct soc_camera_device*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct soc_camera_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct soc_camera_device*) ; 
 struct soc_camera_host* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC3(icd->parent);

	if (FUNC0(icd != ici->icd))
		return;

	if (ici->ops->remove)
		ici->ops->remove(icd);
	if (!icd->clk)
		FUNC1(ici);
	ici->icd = NULL;
}