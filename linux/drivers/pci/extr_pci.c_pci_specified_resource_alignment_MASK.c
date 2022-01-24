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
struct pci_dev {int dummy; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_PROBE_ONLY ; 
 int FUNC0 (struct pci_dev*,char const*,char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  resource_alignment_lock ; 
 char* resource_alignment_param ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,char*,int*,int*) ; 

__attribute__((used)) static resource_size_t FUNC8(struct pci_dev *dev,
							bool *resize)
{
	int align_order, count;
	resource_size_t align = FUNC2();
	const char *p;
	int ret;

	FUNC5(&resource_alignment_lock);
	p = resource_alignment_param;
	if (!p || !*p)
		goto out;
	if (FUNC1(PCI_PROBE_ONLY)) {
		align = 0;
		FUNC4("PCI: Ignoring requested alignments (PCI_PROBE_ONLY)\n");
		goto out;
	}

	while (*p) {
		count = 0;
		if (FUNC7(p, "%d%n", &align_order, &count) == 1 &&
							p[count] == '@') {
			p += count + 1;
		} else {
			align_order = -1;
		}

		ret = FUNC0(dev, p, &p);
		if (ret == 1) {
			*resize = true;
			if (align_order == -1)
				align = PAGE_SIZE;
			else
				align = 1 << align_order;
			break;
		} else if (ret < 0) {
			FUNC3("PCI: Can't parse resource_alignment parameter: %s\n",
			       p);
			break;
		}

		if (*p != ';' && *p != ',') {
			/* End of param or invalid format */
			break;
		}
		p++;
	}
out:
	FUNC6(&resource_alignment_lock);
	return align;
}