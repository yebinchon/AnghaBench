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
struct ad2s1210_state {int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD2S1210_REG_CONTROL ; 
 int FUNC0 (struct ad2s1210_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct ad2s1210_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr,
				     char *buf)
{
	struct ad2s1210_state *st = FUNC2(FUNC1(dev));
	int ret;

	FUNC3(&st->lock);
	ret = FUNC0(st, AD2S1210_REG_CONTROL);
	FUNC4(&st->lock);
	return ret < 0 ? ret : FUNC5(buf, "0x%x\n", ret);
}