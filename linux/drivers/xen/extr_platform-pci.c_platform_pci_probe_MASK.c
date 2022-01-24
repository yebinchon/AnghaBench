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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOENT ; 
 unsigned int PAGE_SIZE ; 
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  callback_via ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 unsigned int FUNC6 () ; 
 int FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int) ; 
 int FUNC11 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 long FUNC12 (struct pci_dev*,int) ; 
 long FUNC13 (struct pci_dev*,int) ; 
 long platform_mmio ; 
 long platform_mmiolen ; 
 int FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  xen_have_vector_callback ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev,
			      const struct pci_device_id *ent)
{
	int i, ret;
	long ioaddr;
	long mmio_addr, mmio_len;
	unsigned int max_nr_gframes;
	unsigned long grant_frames;

	if (!FUNC15())
		return -ENODEV;

	i = FUNC9(pdev);
	if (i)
		return i;

	ioaddr = FUNC13(pdev, 0);

	mmio_addr = FUNC13(pdev, 1);
	mmio_len = FUNC12(pdev, 1);

	if (mmio_addr == 0 || ioaddr == 0) {
		FUNC1(&pdev->dev, "no resources found\n");
		ret = -ENOENT;
		goto pci_out;
	}

	ret = FUNC11(pdev, 1, DRV_NAME);
	if (ret < 0)
		goto pci_out;

	ret = FUNC11(pdev, 0, DRV_NAME);
	if (ret < 0)
		goto mem_out;

	platform_mmio = mmio_addr;
	platform_mmiolen = mmio_len;
	if (!xen_have_vector_callback) {
		ret = FUNC14(pdev);
		if (ret) {
			FUNC2(&pdev->dev, "request_irq failed err=%d\n", ret);
			goto out;
		}
		callback_via = FUNC3(pdev);
		ret = FUNC16(callback_via);
		if (ret) {
			FUNC2(&pdev->dev, "Unable to set the evtchn callback "
					 "err=%d\n", ret);
			goto out;
		}
	}

	max_nr_gframes = FUNC6();
	grant_frames = FUNC0(PAGE_SIZE * max_nr_gframes);
	ret = FUNC7(grant_frames);
	if (ret)
		goto out;
	ret = FUNC5();
	if (ret)
		goto grant_out;
	FUNC17(NULL);
	return 0;
grant_out:
	FUNC4();
out:
	FUNC10(pdev, 0);
mem_out:
	FUNC10(pdev, 1);
pci_out:
	FUNC8(pdev);
	return ret;
}