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
struct rtw_pci {struct pci_dev* pdev; } ;
struct rtw_dev {scalar_t__ priv; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,char*) ; 
 int FUNC1 (struct rtw_dev*) ; 
 int FUNC2 (struct rtw_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*) ; 

__attribute__((used)) static int FUNC5(struct rtw_dev *rtwdev, struct pci_dev *pdev)
{
	struct rtw_pci *rtwpci;
	int ret;

	rtwpci = (struct rtw_pci *)rtwdev->priv;
	rtwpci->pdev = pdev;

	/* after this driver can access to hw registers */
	ret = FUNC2(rtwdev, pdev);
	if (ret) {
		FUNC0(rtwdev, "failed to request pci io region\n");
		goto err_out;
	}

	ret = FUNC1(rtwdev);
	if (ret) {
		FUNC0(rtwdev, "failed to allocate pci resources\n");
		goto err_io_unmap;
	}

	FUNC4(rtwdev);

	return 0;

err_io_unmap:
	FUNC3(rtwdev, pdev);

err_out:
	return ret;
}