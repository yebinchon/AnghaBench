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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_active ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct device* vexpress_restart_device ; 
 int /*<<< orphan*/  vexpress_restart_nb ; 
 int /*<<< orphan*/  vexpress_restart_nb_refcnt ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	int err;

	vexpress_restart_device = dev;
	if (FUNC1(&vexpress_restart_nb_refcnt) == 1) {
		err = FUNC4(&vexpress_restart_nb);
		if (err) {
			FUNC2(dev, "cannot register restart handler (err=%d)\n", err);
			FUNC0(&vexpress_restart_nb_refcnt);
			return err;
		}
	}
	FUNC3(dev, &dev_attr_active);

	return 0;
}