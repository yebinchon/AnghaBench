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
struct myrs_hba {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct myrs_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct myrs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct myrs_hba*) ; 
 struct myrs_hba* FUNC4 (struct pci_dev*,struct pci_device_id const*) ; 
 int FUNC5 (struct myrs_hba*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct pci_dev *dev, const struct pci_device_id *entry)
{
	struct myrs_hba *cs;
	int ret;

	cs = FUNC4(dev, entry);
	if (!cs)
		return -ENODEV;

	ret = FUNC5(cs);
	if (ret < 0) {
		FUNC1(cs);
		return ret;
	}

	if (!FUNC2(dev, cs)) {
		ret = -ENOMEM;
		goto failed;
	}

	ret = FUNC6(cs->host, &dev->dev);
	if (ret) {
		FUNC0(&dev->dev, "scsi_add_host failed with %d\n", ret);
		FUNC3(cs);
		goto failed;
	}
	FUNC7(cs->host);
	return 0;
failed:
	FUNC1(cs);
	return ret;
}