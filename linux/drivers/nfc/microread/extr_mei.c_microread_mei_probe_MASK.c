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
struct nfc_mei_phy {int /*<<< orphan*/  hdev; } ;
struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  LLC_NOP_NAME ; 
 int /*<<< orphan*/  MEI_NFC_HEADER_SIZE ; 
 int /*<<< orphan*/  MEI_NFC_MAX_HCI_PAYLOAD ; 
 int /*<<< orphan*/  mei_phy_ops ; 
 int FUNC0 (struct nfc_mei_phy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nfc_mei_phy* FUNC1 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_mei_phy*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct mei_cl_device *cldev,
			       const struct mei_cl_device_id *id)
{
	struct nfc_mei_phy *phy;
	int r;

	FUNC4("Probing NFC microread\n");

	phy = FUNC1(cldev);
	if (!phy) {
		FUNC3("Cannot allocate memory for microread mei phy.\n");
		return -ENOMEM;
	}

	r = FUNC0(phy, &mei_phy_ops, LLC_NOP_NAME,
			    MEI_NFC_HEADER_SIZE, 0, MEI_NFC_MAX_HCI_PAYLOAD,
			    &phy->hdev);
	if (r < 0) {
		FUNC2(phy);

		return r;
	}

	return 0;
}