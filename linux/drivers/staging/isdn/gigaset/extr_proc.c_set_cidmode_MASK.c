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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cardstate {int waiting; int /*<<< orphan*/  mutex; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  at_state; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 size_t ERESTARTSYS ; 
 int /*<<< orphan*/  EV_PROC_CIDMODE ; 
 struct cardstate* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct cardstate *cs = FUNC0(dev);
	long int value;
	char *end;

	value = FUNC6(buf, &end, 0);
	while (*end)
		if (!FUNC3(*end++))
			return -EINVAL;
	if (value < 0 || value > 1)
		return -EINVAL;

	if (FUNC4(&cs->mutex))
		return -ERESTARTSYS;

	cs->waiting = 1;
	if (!FUNC1(cs, &cs->at_state, EV_PROC_CIDMODE,
			       NULL, value, NULL)) {
		cs->waiting = 0;
		FUNC5(&cs->mutex);
		return -ENOMEM;
	}
	FUNC2(cs);

	FUNC7(cs->waitqueue, !cs->waiting);

	FUNC5(&cs->mutex);

	return count;
}