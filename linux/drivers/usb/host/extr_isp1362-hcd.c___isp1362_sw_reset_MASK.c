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
struct isp1362_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCCMDSTAT ; 
 int /*<<< orphan*/  HCSWRES ; 
 int /*<<< orphan*/  HCSWRES_MAGIC ; 
 int OHCI_HCR ; 
 int FUNC0 (struct isp1362_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1362_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1362_hcd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct isp1362_hcd *isp1362_hcd)
{
	int tmp = 20;

	FUNC1(isp1362_hcd, HCSWRES, HCSWRES_MAGIC);
	FUNC2(isp1362_hcd, HCCMDSTAT, OHCI_HCR);
	while (--tmp) {
		FUNC3(1);
		if (!(FUNC0(isp1362_hcd, HCCMDSTAT) & OHCI_HCR))
			break;
	}
	if (!tmp)
		FUNC4("Software reset timeout\n");
}