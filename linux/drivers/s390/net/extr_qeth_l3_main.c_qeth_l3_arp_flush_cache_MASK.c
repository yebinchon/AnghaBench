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
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_ARP_PROCESSING ; 
 int /*<<< orphan*/  IPA_CMD_ASS_ARP_FLUSH_CACHE ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 scalar_t__ FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 struct qeth_cmd_buffer* FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l3_arp_cmd_cb ; 
 int FUNC7 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct qeth_card *card)
{
	struct qeth_cmd_buffer *iob;
	int rc;

	FUNC3(card, 3, "arpflush");

	/*
	 * currently GuestLAN only supports the ARP assist function
	 * IPA_CMD_ASS_ARP_QUERY_INFO, but not IPA_CMD_ASS_ARP_FLUSH_CACHE;
	 * thus we say EOPNOTSUPP for this ARP function
	*/
	if (FUNC2(card) || FUNC1(card))
		return -EOPNOTSUPP;
	if (!FUNC6(card, IPA_ARP_PROCESSING)) {
		return -EOPNOTSUPP;
	}

	iob = FUNC5(card, IPA_ARP_PROCESSING,
				       IPA_CMD_ASS_ARP_FLUSH_CACHE, 0,
				       QETH_PROT_IPV4);
	if (!iob)
		return -ENOMEM;

	rc = FUNC7(card, iob, qeth_l3_arp_cmd_cb, NULL);
	if (rc)
		FUNC4(2, "Could not flush ARP cache on device %x: %#x\n",
				 FUNC0(card), rc);
	return rc;
}