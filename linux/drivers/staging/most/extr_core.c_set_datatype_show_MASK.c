#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int data_type; } ;
struct most_channel {TYPE_1__ cfg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_5__ {int most_ch_data_type; char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_2__* ch_data_type ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 
 struct most_channel* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	int i;
	struct most_channel *c = FUNC2(dev);

	for (i = 0; i < FUNC0(ch_data_type); i++) {
		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type)
			return FUNC1(buf, PAGE_SIZE, "%s",
					ch_data_type[i].name);
	}
	return FUNC1(buf, PAGE_SIZE, "unconfigured\n");
}