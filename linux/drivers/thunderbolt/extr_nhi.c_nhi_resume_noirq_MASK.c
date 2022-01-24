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
struct tb_nhi {int going_away; TYPE_1__* ops; } ;
struct tb {struct tb_nhi* nhi; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* resume_noirq ) (struct tb_nhi*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_nhi*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct tb* FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct tb_nhi*) ; 
 int FUNC4 (struct tb*) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct pci_dev *pdev = FUNC5(dev);
	struct tb *tb = FUNC2(pdev);
	struct tb_nhi *nhi = tb->nhi;
	int ret;

	/*
	 * Check that the device is still there. It may be that the user
	 * unplugged last device which causes the host controller to go
	 * away on PCs.
	 */
	if (!FUNC1(pdev)) {
		nhi->going_away = true;
	} else {
		if (nhi->ops && nhi->ops->resume_noirq) {
			ret = nhi->ops->resume_noirq(nhi);
			if (ret)
				return ret;
		}
		FUNC0(tb->nhi);
	}

	return FUNC4(tb);
}