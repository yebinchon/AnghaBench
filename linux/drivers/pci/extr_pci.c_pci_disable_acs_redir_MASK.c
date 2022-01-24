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
typedef  int u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PCI_ACS_CR ; 
 scalar_t__ PCI_ACS_CTRL ; 
 int PCI_ACS_EC ; 
 int PCI_ACS_RR ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ACS ; 
 char* disable_acs_redir_param ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*,char const*,char const**) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	int ret = 0;
	const char *p;
	int pos;
	u16 ctrl;

	if (!disable_acs_redir_param)
		return;

	p = disable_acs_redir_param;
	while (*p) {
		ret = FUNC1(dev, p, &p);
		if (ret < 0) {
			FUNC7("PCI: Can't parse disable_acs_redir parameter: %s\n",
				     disable_acs_redir_param);

			break;
		} else if (ret == 1) {
			/* Found a match */
			break;
		}

		if (*p != ';' && *p != ',') {
			/* End of param or invalid format */
			break;
		}
		p++;
	}

	if (ret != 1)
		return;

	if (!FUNC0(dev))
		return;

	pos = FUNC2(dev, PCI_EXT_CAP_ID_ACS);
	if (!pos) {
		FUNC5(dev, "cannot disable ACS redirect for this hardware as it does not have ACS capabilities\n");
		return;
	}

	FUNC4(dev, pos + PCI_ACS_CTRL, &ctrl);

	/* P2P Request & Completion Redirect */
	ctrl &= ~(PCI_ACS_RR | PCI_ACS_CR | PCI_ACS_EC);

	FUNC6(dev, pos + PCI_ACS_CTRL, ctrl);

	FUNC3(dev, "disabled ACS redirect\n");
}