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
struct visor_device {int /*<<< orphan*/  visorchannel; int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/  debugfs_bus_info; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct visor_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct visor_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device *xdev)
{
	struct visor_device *dev = FUNC2(xdev);

	FUNC0(dev->debugfs_bus_info);
	FUNC1(dev->debugfs_dir);
	FUNC4(dev->visorchannel);
	FUNC3(dev);
}