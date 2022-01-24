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
struct rcar_gen3_chan {int /*<<< orphan*/  is_otg_channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct rcar_gen3_chan* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_gen3_chan*) ; 
 scalar_t__ FUNC2 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct rcar_gen3_chan *ch = FUNC0(dev);

	if (!ch->is_otg_channel || !FUNC1(ch))
		return -EIO;

	return FUNC3(buf, "%s\n", FUNC2(ch) ? "host" :
							    "peripheral");
}