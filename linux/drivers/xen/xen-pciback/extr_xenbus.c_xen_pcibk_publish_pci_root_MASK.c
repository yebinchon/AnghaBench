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
struct TYPE_2__ {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (char*,int,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int FUNC5(struct xen_pcibk_device *pdev,
				    unsigned int domain, unsigned int bus)
{
	unsigned int d, b;
	int i, root_num, len, err;
	char str[64];

	FUNC0(&pdev->xdev->dev, "Publishing pci roots\n");

	err = FUNC4(XBT_NIL, pdev->xdev->nodename,
			   "root_num", "%d", &root_num);
	if (err == 0 || err == -ENOENT)
		root_num = 0;
	else if (err < 0)
		goto out;

	/* Verify that we haven't already published this pci root */
	for (i = 0; i < root_num; i++) {
		len = FUNC1(str, sizeof(str), "root-%d", i);
		if (FUNC2(len >= (sizeof(str) - 1))) {
			err = -ENOMEM;
			goto out;
		}

		err = FUNC4(XBT_NIL, pdev->xdev->nodename,
				   str, "%x:%x", &d, &b);
		if (err < 0)
			goto out;
		if (err != 2) {
			err = -EINVAL;
			goto out;
		}

		if (d == domain && b == bus) {
			err = 0;
			goto out;
		}
	}

	len = FUNC1(str, sizeof(str), "root-%d", root_num);
	if (FUNC2(len >= (sizeof(str) - 1))) {
		err = -ENOMEM;
		goto out;
	}

	FUNC0(&pdev->xdev->dev, "writing root %d at %04x:%02x\n",
		root_num, domain, bus);

	err = FUNC3(XBT_NIL, pdev->xdev->nodename, str,
			    "%04x:%02x", domain, bus);
	if (err)
		goto out;

	err = FUNC3(XBT_NIL, pdev->xdev->nodename,
			    "root_num", "%d", (root_num + 1));

out:
	return err;
}