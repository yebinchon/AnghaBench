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
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct platform_device* pdev; } ;

/* Variables and functions */
 TYPE_1__ sdi ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 struct platform_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC1(dev);

	sdi.pdev = pdev;

	FUNC0(pdev);

	return 0;
}