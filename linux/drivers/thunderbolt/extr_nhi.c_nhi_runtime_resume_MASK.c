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
struct TYPE_2__ {int (* runtime_resume ) (struct tb_nhi*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_nhi*) ; 
 struct tb* FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct tb_nhi*) ; 
 int FUNC3 (struct tb*) ; 
 struct pci_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct pci_dev *pdev = FUNC4(dev);
	struct tb *tb = FUNC1(pdev);
	struct tb_nhi *nhi = tb->nhi;
	int ret;

	if (nhi->ops && nhi->ops->runtime_resume) {
		ret = nhi->ops->runtime_resume(nhi);
		if (ret)
			return ret;
	}

	FUNC0(nhi);
	return FUNC3(tb);
}