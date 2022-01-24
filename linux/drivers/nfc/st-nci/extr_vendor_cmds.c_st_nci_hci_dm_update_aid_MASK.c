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
struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_NCI_DEVICE_MGNT_GATE ; 
 int /*<<< orphan*/  ST_NCI_HCI_DM_UPDATE_AID ; 
 int FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *) ; 
 struct nci_dev* FUNC1 (struct nfc_dev*) ; 

__attribute__((used)) static int FUNC2(struct nfc_dev *dev, void *data,
				    size_t data_len)
{
	struct nci_dev *ndev = FUNC1(dev);

	return FUNC0(ndev, ST_NCI_DEVICE_MGNT_GATE,
			ST_NCI_HCI_DM_UPDATE_AID, data, data_len, NULL);
}