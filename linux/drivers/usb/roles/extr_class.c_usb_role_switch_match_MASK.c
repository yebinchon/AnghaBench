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
struct device_connection {int /*<<< orphan*/ * endpoint; scalar_t__ fwnode; scalar_t__ id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  role_class ; 
 void* FUNC4 (struct device*) ; 

__attribute__((used)) static void *FUNC5(struct device_connection *con, int ep,
				   void *data)
{
	struct device *dev;

	if (con->fwnode) {
		if (con->id && !FUNC3(con->fwnode, con->id))
			return NULL;

		dev = FUNC1(role_class, con->fwnode);
	} else {
		dev = FUNC2(role_class, con->endpoint[ep]);
	}

	return dev ? FUNC4(dev) : FUNC0(-EPROBE_DEFER);
}