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
struct rfkill {int dummy; } ;
struct device {int dummy; } ;
typedef  enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct rfkill* FUNC1 (int) ; 
 int /*<<< orphan*/  acer_rfkill_ops ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 
 struct rfkill* FUNC3 (char*,struct device*,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct rfkill*) ; 
 int FUNC5 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfkill*,int) ; 

__attribute__((used)) static struct rfkill *FUNC7(struct device *dev,
					   enum rfkill_type type,
					   char *name, u32 cap)
{
	int err;
	struct rfkill *rfkill_dev;
	u32 state;
	acpi_status status;

	rfkill_dev = FUNC3(name, dev, type,
				  &acer_rfkill_ops,
				  (void *)(unsigned long)cap);
	if (!rfkill_dev)
		return FUNC1(-ENOMEM);

	status = FUNC2(&state, cap);

	err = FUNC5(rfkill_dev);
	if (err) {
		FUNC4(rfkill_dev);
		return FUNC1(err);
	}

	if (FUNC0(status))
		FUNC6(rfkill_dev, !state);

	return rfkill_dev;
}