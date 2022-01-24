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
struct sdw_port_runtime {int /*<<< orphan*/  num; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
				   struct sdw_port_runtime *p_rt)
{
	if (!FUNC0(p_rt->num)) {
		FUNC1(dev,
			"SoundWire: Invalid port number :%d\n", p_rt->num);
		return -EINVAL;
	}

	return 0;
}