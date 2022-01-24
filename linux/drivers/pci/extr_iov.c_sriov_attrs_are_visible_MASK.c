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
typedef  int /*<<< orphan*/  umode_t ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct kobject*) ; 

__attribute__((used)) static umode_t FUNC2(struct kobject *kobj,
				       struct attribute *a, int n)
{
	struct device *dev = FUNC1(kobj);

	if (!FUNC0(dev))
		return 0;

	return a->mode;
}