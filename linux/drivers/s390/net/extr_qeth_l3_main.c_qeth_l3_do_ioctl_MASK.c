#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qeth_card {int dummy; } ;
struct qeth_arp_cache_entry {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifru_data; int /*<<< orphan*/  ifru_ivalue; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; TYPE_1__ ifr_ifru; } ;
typedef  enum qeth_arp_process_subcmds { ____Placeholder_qeth_arp_process_subcmds } qeth_arp_process_subcmds ;
typedef  int /*<<< orphan*/  arp_entry ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EFAULT ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int IPA_CMD_ASS_ARP_ADD_ENTRY ; 
 int IPA_CMD_ASS_ARP_REMOVE_ENTRY ; 
#define  SIOC_QETH_ARP_ADD_ENTRY 132 
#define  SIOC_QETH_ARP_FLUSH_CACHE 131 
#define  SIOC_QETH_ARP_QUERY_INFO 130 
#define  SIOC_QETH_ARP_REMOVE_ENTRY 129 
#define  SIOC_QETH_ARP_SET_NO_ENTRIES 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_arp_cache_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct qeth_card*) ; 
 int FUNC3 (struct qeth_card*,struct qeth_arp_cache_entry*,int) ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct qeth_card *card = dev->ml_priv;
	struct qeth_arp_cache_entry arp_entry;
	enum qeth_arp_process_subcmds arp_cmd;
	int rc = 0;

	switch (cmd) {
	case SIOC_QETH_ARP_SET_NO_ENTRIES:
		if (!FUNC0(CAP_NET_ADMIN)) {
			rc = -EPERM;
			break;
		}
		rc = FUNC5(card, rq->ifr_ifru.ifru_ivalue);
		break;
	case SIOC_QETH_ARP_QUERY_INFO:
		if (!FUNC0(CAP_NET_ADMIN)) {
			rc = -EPERM;
			break;
		}
		rc = FUNC4(card, rq->ifr_ifru.ifru_data);
		break;
	case SIOC_QETH_ARP_ADD_ENTRY:
	case SIOC_QETH_ARP_REMOVE_ENTRY:
		if (!FUNC0(CAP_NET_ADMIN))
			return -EPERM;
		if (FUNC1(&arp_entry, rq->ifr_data, sizeof(arp_entry)))
			return -EFAULT;

		arp_cmd = (cmd == SIOC_QETH_ARP_ADD_ENTRY) ?
				IPA_CMD_ASS_ARP_ADD_ENTRY :
				IPA_CMD_ASS_ARP_REMOVE_ENTRY;
		return FUNC3(card, &arp_entry, arp_cmd);
	case SIOC_QETH_ARP_FLUSH_CACHE:
		if (!FUNC0(CAP_NET_ADMIN)) {
			rc = -EPERM;
			break;
		}
		rc = FUNC2(card);
		break;
	default:
		rc = -EOPNOTSUPP;
	}
	return rc;
}