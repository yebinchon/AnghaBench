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
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST21NFCA_DEVICE_MGNT_GATE ; 
 int /*<<< orphan*/  ST21NFCA_DM_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct nfc_hci_dev *hdev)
{
	FUNC0(hdev, ST21NFCA_DEVICE_MGNT_GATE,
			ST21NFCA_DM_DISCONNECT, NULL, 0, NULL);
}