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
struct tb_xdomain {int /*<<< orphan*/  properties_changed_work; TYPE_1__* tb; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tb_xdomain* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct tb_xdomain *xd;

	xd = FUNC2(dev);
	if (xd) {
		FUNC1(xd->tb->wq, &xd->properties_changed_work,
				   FUNC0(50));
	}

	return 0;
}