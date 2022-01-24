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
struct tb_nhi {TYPE_1__* ops; } ;
struct tb {struct tb_nhi* nhi; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* runtime_suspend ) (struct tb_nhi*) ;} ;

/* Variables and functions */
 struct tb* FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct tb_nhi*) ; 
 int FUNC2 (struct tb*) ; 
 struct pci_dev* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct pci_dev *pdev = FUNC3(dev);
	struct tb *tb = FUNC0(pdev);
	struct tb_nhi *nhi = tb->nhi;
	int ret;

	ret = FUNC2(tb);
	if (ret)
		return ret;

	if (nhi->ops && nhi->ops->runtime_suspend) {
		ret = nhi->ops->runtime_suspend(tb->nhi);
		if (ret)
			return ret;
	}
	return 0;
}