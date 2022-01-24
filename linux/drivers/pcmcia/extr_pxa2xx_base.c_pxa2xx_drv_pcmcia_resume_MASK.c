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
struct pcmcia_low_level {int dummy; } ;
struct device {scalar_t__ platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct pcmcia_low_level*) ; 

__attribute__((used)) static int FUNC1(struct device *dev)
{
	struct pcmcia_low_level *ops = (struct pcmcia_low_level *)dev->platform_data;

	FUNC0(dev, ops);
	return 0;
}