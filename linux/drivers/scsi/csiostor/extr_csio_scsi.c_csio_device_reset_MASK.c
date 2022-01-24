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
struct csio_lnode {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 struct csio_hw* FUNC2 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*) ; 
 struct csio_lnode* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev,
		   struct device_attribute *attr, const char *buf, size_t count)
{
	struct csio_lnode *ln = FUNC6(FUNC0(dev));
	struct csio_hw *hw = FUNC2(ln);

	if (*buf != '1')
		return -EINVAL;

	/* Delete NPIV lnodes */
	 FUNC4(hw, 1);

	/* Block upper IOs */
	FUNC3(hw);

	FUNC7(&hw->lock);
	FUNC1(hw);
	FUNC8(&hw->lock);

	/* Unblock upper IOs */
	FUNC5(hw);
	return count;
}