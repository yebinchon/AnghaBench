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
struct isp1760_device {int /*<<< orphan*/  hcd; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct isp1760_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1760_device*) ; 

void FUNC3(struct device *dev)
{
	struct isp1760_device *isp = FUNC0(dev);

	FUNC2(isp);
	FUNC1(&isp->hcd);
}