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
struct pci_dev {scalar_t__ devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 struct pci_dev* FUNC4 (struct pci_dev*) ; 
 int FUNC5 (char*,char*,int*,int*,...) ; 
 char* FUNC6 (char const*,char) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *dev, const char *path,
				  const char **endptr)
{
	int ret;
	int seg, bus, slot, func;
	char *wpath, *p;
	char end;

	*endptr = FUNC6(path, ';');

	wpath = FUNC2(path, *endptr - path, GFP_KERNEL);
	if (!wpath)
		return -ENOMEM;

	while (1) {
		p = FUNC7(wpath, '/');
		if (!p)
			break;
		ret = FUNC5(p, "/%x.%x%c", &slot, &func, &end);
		if (ret != 2) {
			ret = -EINVAL;
			goto free_and_exit;
		}

		if (dev->devfn != FUNC0(slot, func)) {
			ret = 0;
			goto free_and_exit;
		}

		/*
		 * Note: we don't need to get a reference to the upstream
		 * bridge because we hold a reference to the top level
		 * device which should hold a reference to the bridge,
		 * and so on.
		 */
		dev = FUNC4(dev);
		if (!dev) {
			ret = 0;
			goto free_and_exit;
		}

		*p = 0;
	}

	ret = FUNC5(wpath, "%x:%x:%x.%x%c", &seg, &bus, &slot,
		     &func, &end);
	if (ret != 4) {
		seg = 0;
		ret = FUNC5(wpath, "%x:%x.%x%c", &bus, &slot, &func, &end);
		if (ret != 3) {
			ret = -EINVAL;
			goto free_and_exit;
		}
	}

	ret = (seg == FUNC3(dev->bus) &&
	       bus == dev->bus->number &&
	       dev->devfn == FUNC0(slot, func));

free_and_exit:
	FUNC1(wpath);
	return ret;
}