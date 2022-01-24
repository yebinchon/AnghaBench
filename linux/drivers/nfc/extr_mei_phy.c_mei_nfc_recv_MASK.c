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
typedef  int /*<<< orphan*/  u8 ;
struct nfc_mei_phy {int /*<<< orphan*/  send_wq; int /*<<< orphan*/  recv_req_id; int /*<<< orphan*/  cldev; } ;
struct mei_nfc_hdr {scalar_t__ cmd; int /*<<< orphan*/  req_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct mei_nfc_hdr*) ; 
 scalar_t__ MEI_NFC_CMD_HCI_SEND ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nfc_mei_phy *phy, u8 *buf, size_t length)
{
	struct mei_nfc_hdr *hdr;
	int received_length;

	received_length = FUNC1(phy->cldev, buf, length);
	if (received_length < 0)
		return received_length;

	hdr = (struct mei_nfc_hdr *) buf;

	FUNC0("receive", hdr);
	if (hdr->cmd == MEI_NFC_CMD_HCI_SEND) {
		phy->recv_req_id = hdr->req_id;
		FUNC2(&phy->send_wq);

		return 0;
	}

	return received_length;
}