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
struct sk_buff {int len; scalar_t__ data; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_msg_header {int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;
struct qlink_event {int dummy; } ;
struct qlink_cmd {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
#define  QLINK_MSG_TYPE_CMDRSP 129 
#define  QLINK_MSG_TYPE_EVENT 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (struct qtnf_bus*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct qtnf_bus*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct qtnf_bus *bus, struct sk_buff *skb)
{
	const struct qlink_msg_header *header = (void *)skb->data;
	int ret = -1;

	if (FUNC5(skb->len < sizeof(*header))) {
		FUNC2("packet is too small: %u\n", skb->len);
		FUNC0(skb);
		return -EINVAL;
	}

	if (FUNC5(skb->len != FUNC1(header->len))) {
		FUNC2("cmd reply length mismatch: %u != %u\n",
			skb->len, FUNC1(header->len));
		FUNC0(skb);
		return -EFAULT;
	}

	switch (FUNC1(header->type)) {
	case QLINK_MSG_TYPE_CMDRSP:
		if (FUNC5(skb->len < sizeof(struct qlink_cmd))) {
			FUNC2("cmd reply too short: %u\n", skb->len);
			FUNC0(skb);
			break;
		}

		FUNC4(bus, skb);
		break;
	case QLINK_MSG_TYPE_EVENT:
		if (FUNC5(skb->len < sizeof(struct qlink_event))) {
			FUNC2("event too short: %u\n", skb->len);
			FUNC0(skb);
			break;
		}

		ret = FUNC3(bus, skb);
		break;
	default:
		FUNC2("unknown packet type: %x\n", FUNC1(header->type));
		FUNC0(skb);
		break;
	}

	return ret;
}