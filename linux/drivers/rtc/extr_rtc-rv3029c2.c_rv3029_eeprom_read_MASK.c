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
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC3(struct device *dev, u8 reg,
			      u8 buf[], size_t len)
{
	int ret, err;

	err = FUNC0(dev);
	if (err < 0)
		return err;

	ret = FUNC2(dev, reg, buf, len);

	err = FUNC1(dev);
	if (err < 0)
		return err;

	return ret;
}