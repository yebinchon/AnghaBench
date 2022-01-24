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
struct TYPE_3__ {int direction; } ;

/* Variables and functions */
 int MOST_CH_RX ; 
 int MOST_CH_TX ; 
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
	if (c->iface->channel_vector[i].direction & MOST_CH_RX)
		FUNC0(buf, "rx ");
	if (c->iface->channel_vector[i].direction & MOST_CH_TX)
		FUNC0(buf, "tx ");
	FUNC0(buf, "\n");
	return FUNC2(buf);
}