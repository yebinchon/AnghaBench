#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct most_channel {unsigned int channel_id; TYPE_2__* iface; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {TYPE_1__* channel_vector; } ;
struct TYPE_3__ {int data_type; } ;

/* Variables and functions */
 int MOST_CH_ASYNC ; 
 int MOST_CH_CONTROL ; 
 int MOST_CH_ISOC ; 
 int MOST_CH_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct most_channel* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct most_channel *c = FUNC3(dev);
	unsigned int i = c->channel_id;

	FUNC1(buf, "");
	if (c->iface->channel_vector[i].data_type & MOST_CH_CONTROL)
		FUNC0(buf, "control ");
	if (c->iface->channel_vector[i].data_type & MOST_CH_ASYNC)
		FUNC0(buf, "async ");
	if (c->iface->channel_vector[i].data_type & MOST_CH_SYNC)
		FUNC0(buf, "sync ");
	if (c->iface->channel_vector[i].data_type & MOST_CH_ISOC)
		FUNC0(buf, "isoc ");
	FUNC0(buf, "\n");
	return FUNC2(buf);
}