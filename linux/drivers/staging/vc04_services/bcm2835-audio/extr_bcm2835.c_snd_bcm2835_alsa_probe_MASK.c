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
struct platform_device {struct device dev; } ;

/* Variables and functions */
 scalar_t__ MAX_SUBSTREAMS ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__) ; 
 scalar_t__ num_channels ; 
 int FUNC2 (struct device*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int err;

	if (num_channels <= 0 || num_channels > MAX_SUBSTREAMS) {
		num_channels = MAX_SUBSTREAMS;
		FUNC1(dev, "Illegal num_channels value, will use %u\n",
			 num_channels);
	}

	err = FUNC0(dev);
	if (err)
		return err;

	err = FUNC2(dev, num_channels);
	if (err)
		return err;

	return 0;
}