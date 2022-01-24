#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tb_switch {int /*<<< orphan*/  dev; TYPE_2__* tb; TYPE_1__* nvm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int authenticating; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_switch*) ; 
 int FUNC4 (struct tb_switch*) ; 
 int FUNC5 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC7 (struct tb_switch*) ; 
 int FUNC8 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct tb_switch*) ; 
 struct tb_switch* FUNC14 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC15(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct tb_switch *sw = FUNC14(dev);
	bool val;
	int ret;

	FUNC9(&sw->dev);

	if (!FUNC1(&sw->tb->lock)) {
		ret = FUNC12();
		goto exit_rpm;
	}

	/* If NVMem devices are not yet added */
	if (!sw->nvm) {
		ret = -EAGAIN;
		goto exit_unlock;
	}

	ret = FUNC0(buf, &val);
	if (ret)
		goto exit_unlock;

	/* Always clear the authentication status */
	FUNC7(sw);

	if (val) {
		if (!sw->nvm->buf) {
			ret = -EINVAL;
			goto exit_unlock;
		}

		ret = FUNC8(sw);
		if (ret)
			goto exit_unlock;

		sw->nvm->authenticating = true;

		if (!FUNC13(sw)) {
			/*
			 * Keep root port from suspending as long as the
			 * NVM upgrade process is running.
			 */
			FUNC6(sw);
			ret = FUNC5(sw);
			if (ret)
				FUNC3(sw);
		} else {
			ret = FUNC4(sw);
		}
	}

exit_unlock:
	FUNC2(&sw->tb->lock);
exit_rpm:
	FUNC10(&sw->dev);
	FUNC11(&sw->dev);

	if (ret)
		return ret;
	return count;
}