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
struct device {TYPE_1__* parent; scalar_t__ of_node; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  rtc_ida ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int of_id = -1, id = -1;

	if (dev->of_node)
		of_id = FUNC2(dev->of_node, "rtc");
	else if (dev->parent && dev->parent->of_node)
		of_id = FUNC2(dev->parent->of_node, "rtc");

	if (of_id >= 0) {
		id = FUNC1(&rtc_ida, of_id, of_id + 1, GFP_KERNEL);
		if (id < 0)
			FUNC0(dev, "/aliases ID %d not available\n", of_id);
	}

	if (id < 0)
		id = FUNC1(&rtc_ida, 0, 0, GFP_KERNEL);

	return id;
}