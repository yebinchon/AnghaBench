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
struct tb_property_dir {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (char const*,struct tb_property_dir*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  xdomain_lock ; 

void FUNC5(const char *key, struct tb_property_dir *dir)
{
	int ret = 0;

	FUNC0(&xdomain_lock);
	if (FUNC3(key, dir))
		ret = FUNC2();
	FUNC1(&xdomain_lock);

	if (!ret)
		FUNC4();
}