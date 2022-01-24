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
struct sk_buff {int len; scalar_t__ data; } ;
struct qtnf_wmac {int dummy; } ;
struct qtnf_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct qlink_event {int /*<<< orphan*/  vifid; int /*<<< orphan*/  macid; TYPE_1__ mhdr; int /*<<< orphan*/  event_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct qtnf_wmac* FUNC3 (struct qtnf_bus*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qtnf_wmac*,struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct qtnf_bus *bus,
				  const struct sk_buff *skb)
{
	const struct qlink_event *event;
	struct qtnf_wmac *mac;
	int res;

	if (FUNC7(!skb || skb->len < sizeof(*event))) {
		FUNC2("invalid event buffer\n");
		return -EINVAL;
	}

	event = (struct qlink_event *)skb->data;

	mac = FUNC3(bus, event->macid);

	FUNC1("new event id:%x len:%u mac:%u vif:%u\n",
		 FUNC0(event->event_id), FUNC0(event->mhdr.len),
		 event->macid, event->vifid);

	if (FUNC7(!mac))
		return -ENXIO;

	FUNC5();
	res = FUNC4(mac, skb);
	FUNC6();

	return res;
}