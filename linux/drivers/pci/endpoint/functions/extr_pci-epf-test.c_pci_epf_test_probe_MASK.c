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
struct pci_epf_test {int /*<<< orphan*/  cmd_handler; struct pci_epf* epf; } ;
struct device {int dummy; } ;
struct pci_epf {int /*<<< orphan*/ * header; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pci_epf_test* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_epf*,struct pci_epf_test*) ; 
 int /*<<< orphan*/  pci_epf_test_cmd_handler ; 
 int /*<<< orphan*/  test_header ; 

__attribute__((used)) static int FUNC3(struct pci_epf *epf)
{
	struct pci_epf_test *epf_test;
	struct device *dev = &epf->dev;

	epf_test = FUNC1(dev, sizeof(*epf_test), GFP_KERNEL);
	if (!epf_test)
		return -ENOMEM;

	epf->header = &test_header;
	epf_test->epf = epf;

	FUNC0(&epf_test->cmd_handler, pci_epf_test_cmd_handler);

	FUNC2(epf, epf_test);
	return 0;
}