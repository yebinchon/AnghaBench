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
struct myrb_hba {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct myrb_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct myrb_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct myrb_hba*) ; 
 struct myrb_hba* FUNC4 (struct pci_dev*,struct pci_device_id const*) ; 
 int FUNC5 (struct myrb_hba*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *dev, const struct pci_device_id *entry)
{
	struct myrb_hba *cb;
	int ret;

	cb = FUNC4(dev, entry);
	if (!cb)
		return -ENODEV;

	ret = FUNC5(cb);
	if (ret < 0) {
		FUNC1(cb);
		return ret;
	}

	if (!FUNC2(dev, cb)) {
		ret = -ENOMEM;
		goto failed;
	}

	ret = FUNC6(cb->host, &dev->dev);
	if (ret) {
		FUNC0(&dev->dev, "scsi_add_host failed with %d\n", ret);
		FUNC3(cb);
		goto failed;
	}
	FUNC7(cb->host);
	return 0;
failed:
	FUNC1(cb);
	return ret;
}