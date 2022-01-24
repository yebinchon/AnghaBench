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
struct riva_par {unsigned char* EDID; } ;
struct pci_dev {int dummy; } ;
struct fb_info {struct riva_par* par; } ;
struct device_node {struct device_node* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned char* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (unsigned char const*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info, struct pci_dev *pd)
{
	struct riva_par *par = info->par;
	struct device_node *dp;
	const unsigned char *pedid = NULL;
	const unsigned char *disptype = NULL;
	static char *propnames[] = {
		"DFP,EDID", "LCD,EDID", "EDID", "EDID1", "EDID,B", "EDID,A", NULL };
	int i;

	FUNC1();
	dp = FUNC4(pd);
	for (; dp != NULL; dp = dp->child) {
		disptype = FUNC3(dp, "display-type", NULL);
		if (disptype == NULL)
			continue;
		if (FUNC5(disptype, "LCD", 3) != 0)
			continue;
		for (i = 0; propnames[i] != NULL; ++i) {
			pedid = FUNC3(dp, propnames[i], NULL);
			if (pedid != NULL) {
				par->EDID = (unsigned char *)pedid;
				FUNC0("LCD found.\n");
				return 1;
			}
		}
	}
	FUNC2();
	return 0;
}