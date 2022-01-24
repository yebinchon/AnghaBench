#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int FUNC1 (scalar_t__) ; 
 int EINVAL ; 
 int LM3630A_NUM_SINKS ; 
 scalar_t__ LM3630A_SINK_0 ; 
 scalar_t__ LM3630A_SINK_1 ; 
 int FUNC2 (struct fwnode_handle*,char*) ; 
 int FUNC3 (struct fwnode_handle*,char*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC4(struct fwnode_handle *node,
				     int default_led_sources)
{
	u32 sources[LM3630A_NUM_SINKS];
	int ret, num_sources, i;

	num_sources = FUNC2(node, "led-sources");
	if (num_sources < 0)
		return default_led_sources;
	else if (num_sources > FUNC0(sources))
		return -EINVAL;

	ret = FUNC3(node, "led-sources", sources,
					     num_sources);
	if (ret)
		return ret;

	for (i = 0; i < num_sources; i++) {
		if (sources[i] < LM3630A_SINK_0 || sources[i] > LM3630A_SINK_1)
			return -EINVAL;

		ret |= FUNC1(sources[i]);
	}

	return ret;
}