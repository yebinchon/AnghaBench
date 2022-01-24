#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct TYPE_5__ {scalar_t__ flags_32bit; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ setassparms; } ;
struct TYPE_8__ {TYPE_3__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_ARP_PROCESSING ; 
 int /*<<< orphan*/  IPA_CMD_ASS_ARP_SET_NO_ENTRIES ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  flags_32bit ; 
 struct qeth_cmd_buffer* FUNC6 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l3_arp_cmd_cb ; 
 int FUNC8 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct qeth_card *card, int no_entries)
{
	struct qeth_cmd_buffer *iob;
	int rc;

	FUNC2(card, 3, "arpstnoe");

	/*
	 * currently GuestLAN only supports the ARP assist function
	 * IPA_CMD_ASS_ARP_QUERY_INFO, but not IPA_CMD_ASS_ARP_SET_NO_ENTRIES;
	 * thus we say EOPNOTSUPP for this ARP function
	 */
	if (FUNC1(card))
		return -EOPNOTSUPP;
	if (!FUNC7(card, IPA_ARP_PROCESSING)) {
		return -EOPNOTSUPP;
	}

	iob = FUNC6(card, IPA_ARP_PROCESSING,
				       IPA_CMD_ASS_ARP_SET_NO_ENTRIES,
				       FUNC4(flags_32bit),
				       QETH_PROT_IPV4);
	if (!iob)
		return -ENOMEM;

	FUNC5(iob)->data.setassparms.data.flags_32bit = (u32) no_entries;
	rc = FUNC8(card, iob, qeth_l3_arp_cmd_cb, NULL);
	if (rc)
		FUNC3(2, "Could not set number of ARP entries on device %x: %#x\n",
				 FUNC0(card), rc);
	return rc;
}