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
struct regulator_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,struct device_node*) ; 
 struct regulator_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  regulator_class ; 

struct regulator_dev *FUNC2(struct device_node *np)
{
	struct device *dev;

	dev = FUNC0(&regulator_class, np);

	return dev ? FUNC1(dev) : NULL;
}