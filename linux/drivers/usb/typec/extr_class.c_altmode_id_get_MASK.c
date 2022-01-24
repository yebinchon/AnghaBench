#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ida {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct ida mode_ids; } ;
struct TYPE_5__ {struct ida mode_ids; } ;
struct TYPE_4__ {struct ida mode_ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ida*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 TYPE_3__* FUNC3 (struct device*) ; 
 TYPE_2__* FUNC4 (struct device*) ; 
 TYPE_1__* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct ida *ids;

	if (FUNC1(dev))
		ids = &FUNC3(dev)->mode_ids;
	else if (FUNC2(dev))
		ids = &FUNC4(dev)->mode_ids;
	else
		ids = &FUNC5(dev)->mode_ids;

	return FUNC0(ids, 0, 0, GFP_KERNEL);
}