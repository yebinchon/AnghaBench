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
struct device {struct device const* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_MAX ; 
 char* FUNC0 (struct device const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static void FUNC2(const struct device *dev, char *name)
{
	if (dev->parent)
		FUNC1(name, NAME_MAX, "%s-%s", FUNC0(dev->parent),
			 FUNC0(dev));
	else
		FUNC1(name, NAME_MAX, "%s", FUNC0(dev));
}