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
struct v4l2_clk {struct soc_camera_device* priv; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_device {int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct soc_camera_host*) ; 
 struct soc_camera_host* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct v4l2_clk *clk)
{
	struct soc_camera_device *icd = clk->priv;
	struct soc_camera_host *ici;

	if (!icd || !icd->parent)
		return;

	ici = FUNC2(icd->parent);

	FUNC1(ici);

	FUNC0(ici->ops->owner);
}