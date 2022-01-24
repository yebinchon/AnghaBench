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
 int EAGAIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  TB_PROPERTY_TYPE_DIRECTORY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct tb_property_dir*) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,struct tb_property_dir*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  xdomain_lock ; 
 int /*<<< orphan*/  xdomain_property_dir ; 

int FUNC9(const char *key, struct tb_property_dir *dir)
{
	int ret;

	if (FUNC0(!xdomain_property_dir))
		return -EAGAIN;

	if (!key || FUNC5(key) > 8)
		return -EINVAL;

	FUNC1(&xdomain_lock);
	if (FUNC7(xdomain_property_dir, key,
			     TB_PROPERTY_TYPE_DIRECTORY)) {
		ret = -EEXIST;
		goto err_unlock;
	}

	ret = FUNC6(xdomain_property_dir, key, dir);
	if (ret)
		goto err_unlock;

	ret = FUNC3();
	if (ret) {
		FUNC4(key, dir);
		goto err_unlock;
	}

	FUNC2(&xdomain_lock);
	FUNC8();
	return 0;

err_unlock:
	FUNC2(&xdomain_lock);
	return ret;
}