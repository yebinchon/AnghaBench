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
struct uio_pruss_dev {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct uio_pruss_dev* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uio_pruss_dev*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *dev)
{
	struct uio_pruss_dev *gdev = FUNC0(dev);

	FUNC1(&dev->dev, gdev);
	return 0;
}