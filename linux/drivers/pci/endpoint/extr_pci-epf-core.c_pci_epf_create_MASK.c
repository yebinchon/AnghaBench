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
struct device {int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct pci_epf {struct device dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct pci_epf* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*,char*,char const*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_epf*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,int /*<<< orphan*/ ) ; 
 struct pci_epf* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_epf_bus_type ; 
 int /*<<< orphan*/  pci_epf_type ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 char const* FUNC8 (char const*,char) ; 

struct pci_epf *FUNC9(const char *name)
{
	int ret;
	struct pci_epf *epf;
	struct device *dev;
	int len;

	epf = FUNC6(sizeof(*epf), GFP_KERNEL);
	if (!epf)
		return FUNC0(-ENOMEM);

	len = FUNC8(name, '.') - name;
	epf->name = FUNC5(name, len, GFP_KERNEL);
	if (!epf->name) {
		FUNC4(epf);
		return FUNC0(-ENOMEM);
	}

	dev = &epf->dev;
	FUNC3(dev);
	dev->bus = &pci_epf_bus_type;
	dev->type = &pci_epf_type;

	ret = FUNC1(dev, "%s", name);
	if (ret) {
		FUNC7(dev);
		return FUNC0(ret);
	}

	ret = FUNC2(dev);
	if (ret) {
		FUNC7(dev);
		return FUNC0(ret);
	}

	return epf;
}