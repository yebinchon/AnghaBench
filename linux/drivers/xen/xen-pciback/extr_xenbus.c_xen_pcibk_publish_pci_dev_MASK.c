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
struct xen_pcibk_device {TYPE_1__* xdev; } ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_2__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int FUNC2 (char*,int,char*,unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct xen_pcibk_device *pdev,
				   unsigned int domain, unsigned int bus,
				   unsigned int devfn, unsigned int devid)
{
	int err;
	int len;
	char str[64];

	len = FUNC2(str, sizeof(str), "vdev-%d", devid);
	if (FUNC3(len >= (sizeof(str) - 1))) {
		err = -ENOMEM;
		goto out;
	}

	/* Note: The PV protocol uses %02x, don't change it */
	err = FUNC4(XBT_NIL, pdev->xdev->nodename, str,
			    "%04x:%02x:%02x.%02x", domain, bus,
			    FUNC1(devfn), FUNC0(devfn));

out:
	return err;
}