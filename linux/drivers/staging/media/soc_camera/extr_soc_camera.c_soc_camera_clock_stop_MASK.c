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
struct soc_camera_host {int /*<<< orphan*/  clk_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clock_stop ) (struct soc_camera_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct soc_camera_host*) ; 

__attribute__((used)) static void FUNC3(struct soc_camera_host *ici)
{
	if (!ici->ops->clock_stop)
		return;

	FUNC0(&ici->clk_lock);
	ici->ops->clock_stop(ici);
	FUNC1(&ici->clk_lock);
}