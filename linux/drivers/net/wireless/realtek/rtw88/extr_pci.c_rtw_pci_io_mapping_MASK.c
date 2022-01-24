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
typedef  int u8 ;
struct rtw_pci {int /*<<< orphan*/  mmap; } ;
struct rtw_dev {scalar_t__ priv; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,unsigned long) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*) ; 

__attribute__((used)) static int FUNC4(struct rtw_dev *rtwdev,
			      struct pci_dev *pdev)
{
	struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;
	unsigned long len;
	u8 bar_id = 2;
	int ret;

	ret = FUNC1(pdev, KBUILD_MODNAME);
	if (ret) {
		FUNC3(rtwdev, "failed to request pci regions\n");
		return ret;
	}

	len = FUNC2(pdev, bar_id);
	rtwpci->mmap = FUNC0(pdev, bar_id, len);
	if (!rtwpci->mmap) {
		FUNC3(rtwdev, "failed to map pci memory\n");
		return -ENOMEM;
	}

	return 0;
}