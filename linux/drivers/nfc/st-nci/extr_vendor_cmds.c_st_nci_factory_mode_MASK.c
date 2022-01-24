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
struct st_nci_info {int /*<<< orphan*/  flags; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ST_NCI_FACTORY_MODE ; 
#define  ST_NCI_FACTORY_MODE_OFF 129 
#define  ST_NCI_FACTORY_MODE_ON 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct st_nci_info* FUNC1 (struct nci_dev*) ; 
 struct nci_dev* FUNC2 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nfc_dev *dev, void *data,
			       size_t data_len)
{
	struct nci_dev *ndev = FUNC2(dev);
	struct st_nci_info *info = FUNC1(ndev);

	if (data_len != 1)
		return -EINVAL;

	FUNC3("factory mode: %x\n", ((u8 *)data)[0]);

	switch (((u8 *)data)[0]) {
	case ST_NCI_FACTORY_MODE_ON:
		FUNC4(ST_NCI_FACTORY_MODE, &info->flags);
	break;
	case ST_NCI_FACTORY_MODE_OFF:
		FUNC0(ST_NCI_FACTORY_MODE, &info->flags);
	break;
	default:
		return -EINVAL;
	}

	return 0;
}