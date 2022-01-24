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
struct platform_device {int num_resources; char* resource; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct device_node* of_node; int /*<<< orphan*/  module; int /*<<< orphan*/  provider_name; int /*<<< orphan*/  attr_groups; } ;
struct of_pmem_private {TYPE_1__ bus_desc; struct nvdimm_bus* bus; } ;
struct nvdimm_bus {int dummy; } ;
struct nd_region_desc {char* res; int /*<<< orphan*/  flags; struct device_node* of_node; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  target_node; int /*<<< orphan*/  attr_groups; } ;
struct nd_region {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  ndr_desc ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ND_REGION_PAGEMAP ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  bus_attr_groups ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,struct device_node*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct of_pmem_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_pmem_private* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_region_desc*,int /*<<< orphan*/ ,int) ; 
 struct nvdimm_bus* FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct nd_region* FUNC9 (struct nvdimm_bus*,struct nd_region_desc*) ; 
 struct nd_region* FUNC10 (struct nvdimm_bus*,struct nd_region_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct of_pmem_private*) ; 
 int /*<<< orphan*/  region_attr_groups ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct of_pmem_private *priv;
	struct device_node *np;
	struct nvdimm_bus *bus;
	bool is_volatile;
	int i;

	np = FUNC1(&pdev->dev);
	if (!np)
		return -ENXIO;

	priv = FUNC6(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->bus_desc.attr_groups = bus_attr_groups;
	priv->bus_desc.provider_name = FUNC5(pdev->name, GFP_KERNEL);
	priv->bus_desc.module = THIS_MODULE;
	priv->bus_desc.of_node = np;

	priv->bus = bus = FUNC8(&pdev->dev, &priv->bus_desc);
	if (!bus) {
		FUNC4(priv);
		return -ENODEV;
	}
	FUNC12(pdev, priv);

	is_volatile = !!FUNC11(np, "volatile", NULL);
	FUNC0(&pdev->dev, "Registering %s regions from %pOF\n",
			is_volatile ? "volatile" : "non-volatile",  np);

	for (i = 0; i < pdev->num_resources; i++) {
		struct nd_region_desc ndr_desc;
		struct nd_region *region;

		/*
		 * NB: libnvdimm copies the data from ndr_desc into it's own
		 * structures so passing a stack pointer is fine.
		 */
		FUNC7(&ndr_desc, 0, sizeof(ndr_desc));
		ndr_desc.attr_groups = region_attr_groups;
		ndr_desc.numa_node = FUNC2(&pdev->dev);
		ndr_desc.target_node = ndr_desc.numa_node;
		ndr_desc.res = &pdev->resource[i];
		ndr_desc.of_node = np;
		FUNC13(ND_REGION_PAGEMAP, &ndr_desc.flags);

		if (is_volatile)
			region = FUNC10(bus, &ndr_desc);
		else
			region = FUNC9(bus, &ndr_desc);

		if (!region)
			FUNC3(&pdev->dev, "Unable to register region %pR from %pOF\n",
					ndr_desc.res, np);
		else
			FUNC0(&pdev->dev, "Registered region %pR from %pOF\n",
					ndr_desc.res, np);
	}

	return 0;
}