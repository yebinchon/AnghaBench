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
struct csio_hw {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct csio_hw*) ; 
 struct csio_hw* FUNC2 (struct csio_lnode*) ; 
 struct csio_lnode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev,
		   struct device_attribute *attr, char *buf)
{
	struct csio_lnode *ln = FUNC3(FUNC0(dev));
	struct csio_hw *hw = FUNC2(ln);

	if (FUNC1(hw))
		return FUNC4(buf, PAGE_SIZE, "ready\n");
	else
		return FUNC4(buf, PAGE_SIZE, "not ready\n");
}