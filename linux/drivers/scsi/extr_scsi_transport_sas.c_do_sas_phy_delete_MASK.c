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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, void *data)
{
	int pass = (int)(unsigned long)data;

	if (pass == 0 && FUNC5(dev))
		FUNC3(FUNC1(dev));
	else if (pass == 1 && FUNC4(dev))
		FUNC2(FUNC0(dev));
	return 0;
}