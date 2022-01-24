#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_epc_ops {int dummy; } ;
struct TYPE_5__ {struct device* parent; int /*<<< orphan*/  class; } ;
struct pci_epc {TYPE_1__ dev; int /*<<< orphan*/  group; struct pci_epc_ops const* ops; int /*<<< orphan*/  pci_epf; int /*<<< orphan*/  lock; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct pci_epc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_epc*) ; 
 struct pci_epc* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_epc_class ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct pci_epc *
FUNC12(struct device *dev, const struct pci_epc_ops *ops,
		 struct module *owner)
{
	int ret;
	struct pci_epc *epc;

	if (FUNC2(!dev)) {
		ret = -EINVAL;
		goto err_ret;
	}

	epc = FUNC8(sizeof(*epc), GFP_KERNEL);
	if (!epc) {
		ret = -ENOMEM;
		goto err_ret;
	}

	FUNC11(&epc->lock);
	FUNC1(&epc->pci_epf);

	FUNC6(&epc->dev);
	epc->dev.class = pci_epc_class;
	epc->dev.parent = dev;
	epc->ops = ops;

	ret = FUNC4(&epc->dev, "%s", FUNC3(dev));
	if (ret)
		goto put_dev;

	ret = FUNC5(&epc->dev);
	if (ret)
		goto put_dev;

	epc->group = FUNC9(FUNC3(dev));

	return epc;

put_dev:
	FUNC10(&epc->dev);
	FUNC7(epc);

err_ret:
	return FUNC0(ret);
}