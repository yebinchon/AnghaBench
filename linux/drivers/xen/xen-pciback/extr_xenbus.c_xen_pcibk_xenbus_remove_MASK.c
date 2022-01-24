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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct xen_pcibk_device {int dummy; } ;

/* Variables and functions */
 struct xen_pcibk_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xen_pcibk_device*) ; 

__attribute__((used)) static int FUNC2(struct xenbus_device *dev)
{
	struct xen_pcibk_device *pdev = FUNC0(&dev->dev);

	if (pdev != NULL)
		FUNC1(pdev);

	return 0;
}