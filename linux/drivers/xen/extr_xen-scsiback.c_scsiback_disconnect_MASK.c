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
struct TYPE_2__ {int /*<<< orphan*/  sring; } ;
struct vscsibk_info {TYPE_1__ ring; int /*<<< orphan*/  dev; scalar_t__ irq; int /*<<< orphan*/  nr_unreplied_reqs; int /*<<< orphan*/  waiting_to_free; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct vscsibk_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vscsibk_info *info)
{
	FUNC2(info->waiting_to_free,
		FUNC0(&info->nr_unreplied_reqs) == 0);

	FUNC1(info->irq, info);
	info->irq = 0;
	FUNC3(info->dev, info->ring.sring);
}