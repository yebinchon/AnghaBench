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
struct TYPE_5__ {int request_bits; } ;
struct TYPE_6__ {TYPE_1__ query_arp; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_8__ {TYPE_3__ setassparms; } ;
struct qeth_ipa_cmd {TYPE_4__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct qeth_arp_query_info {int dummy; } ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IPA_ARP_PROCESSING ; 
 int /*<<< orphan*/  IPA_CMD_ASS_ARP_QUERY_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct qeth_ipa_cmd* FUNC4 (struct qeth_cmd_buffer*) ; 
 struct qeth_cmd_buffer* FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qeth_l3_arp_query_cb ; 
 int FUNC6 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,struct qeth_arp_query_info*) ; 
 int /*<<< orphan*/  query_arp ; 

__attribute__((used)) static int FUNC7(struct qeth_card *card,
	enum qeth_prot_versions prot,
	struct qeth_arp_query_info *qinfo)
{
	struct qeth_cmd_buffer *iob;
	struct qeth_ipa_cmd *cmd;
	int rc;

	FUNC1(card, 3, "qarpipv%i", prot);

	iob = FUNC5(card, IPA_ARP_PROCESSING,
				       IPA_CMD_ASS_ARP_QUERY_INFO,
				       FUNC3(query_arp), prot);
	if (!iob)
		return -ENOMEM;
	cmd = FUNC4(iob);
	cmd->data.setassparms.data.query_arp.request_bits = 0x000F;
	rc = FUNC6(card, iob, qeth_l3_arp_query_cb, qinfo);
	if (rc)
		FUNC2(2, "Error while querying ARP cache on device %x: %#x\n",
				 FUNC0(card), rc);
	return rc;
}