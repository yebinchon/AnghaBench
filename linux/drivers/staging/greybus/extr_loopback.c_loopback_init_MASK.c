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
struct TYPE_2__ {int /*<<< orphan*/  root; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gb_dev ; 
 int /*<<< orphan*/  gb_loopback_driver ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loopback_class ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	int retval;

	FUNC5(&gb_dev.lock);
	gb_dev.root = FUNC2("gb_loopback", NULL);

	retval = FUNC0(&loopback_class);
	if (retval)
		goto err;

	retval = FUNC4(&gb_loopback_driver);
	if (retval)
		goto err_unregister;

	return 0;

err_unregister:
	FUNC1(&loopback_class);
err:
	FUNC3(gb_dev.root);
	return retval;
}