#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rfkill {int dummy; } ;
struct eeepc_laptop {TYPE_1__* platform_device; } ;
typedef  enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct eeepc_laptop*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eeepc_rfkill_ops ; 
 int FUNC1 (struct eeepc_laptop*,int) ; 
 struct rfkill* FUNC2 (char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC4 (struct rfkill*,int) ; 
 int FUNC5 (struct rfkill*) ; 

__attribute__((used)) static int FUNC6(struct eeepc_laptop *eeepc,
			    struct rfkill **rfkill,
			    const char *name,
			    enum rfkill_type type, int cm)
{
	acpi_handle handle;
	int result;

	result = FUNC0(eeepc, cm, &handle);
	if (result < 0)
		return result;

	*rfkill = FUNC2(name, &eeepc->platform_device->dev, type,
			       &eeepc_rfkill_ops, handle);

	if (!*rfkill)
		return -EINVAL;

	FUNC4(*rfkill, FUNC1(eeepc, cm) != 1);
	result = FUNC5(*rfkill);
	if (result) {
		FUNC3(*rfkill);
		*rfkill = NULL;
		return result;
	}
	return 0;
}