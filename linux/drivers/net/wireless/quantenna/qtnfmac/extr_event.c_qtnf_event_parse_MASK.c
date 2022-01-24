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
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_wmac {struct qtnf_vif* iflist; } ;
struct qtnf_vif {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct qlink_event {size_t vifid; TYPE_1__ mhdr; int /*<<< orphan*/  event_id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  QLINK_EVENT_BSS_JOIN 137 
#define  QLINK_EVENT_BSS_LEAVE 136 
#define  QLINK_EVENT_EXTERNAL_AUTH 135 
#define  QLINK_EVENT_FREQ_CHANGE 134 
#define  QLINK_EVENT_MGMT_RECEIVED 133 
#define  QLINK_EVENT_RADAR 132 
#define  QLINK_EVENT_SCAN_COMPLETE 131 
#define  QLINK_EVENT_SCAN_RESULTS 130 
#define  QLINK_EVENT_STA_ASSOCIATED 129 
#define  QLINK_EVENT_STA_DEAUTH 128 
 size_t QTNF_MAX_INTF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct qtnf_vif*,void const*,int) ; 
 int FUNC5 (struct qtnf_vif*,void const*,int) ; 
 int FUNC6 (struct qtnf_vif*,void const*,int) ; 
 int FUNC7 (struct qtnf_wmac*,void const*,int) ; 
 int FUNC8 (struct qtnf_vif*,void const*,int) ; 
 int FUNC9 (struct qtnf_vif*,void const*,int) ; 
 int FUNC10 (struct qtnf_wmac*,void const*,int) ; 
 int FUNC11 (struct qtnf_vif*,void const*,int) ; 
 int FUNC12 (struct qtnf_wmac*,struct qtnf_vif*,void const*,int) ; 
 int FUNC13 (struct qtnf_wmac*,struct qtnf_vif*,void const*,int) ; 

__attribute__((used)) static int FUNC14(struct qtnf_wmac *mac,
			    const struct sk_buff *event_skb)
{
	const struct qlink_event *event;
	struct qtnf_vif *vif = NULL;
	int ret = -1;
	u16 event_id;
	u16 event_len;

	event = (const struct qlink_event *)event_skb->data;
	event_id = FUNC0(event->event_id);
	event_len = FUNC0(event->mhdr.len);

	if (FUNC1(event->vifid < QTNF_MAX_INTF)) {
		vif = &mac->iflist[event->vifid];
	} else {
		FUNC2("invalid vif(%u)\n", event->vifid);
		return -EINVAL;
	}

	switch (event_id) {
	case QLINK_EVENT_STA_ASSOCIATED:
		ret = FUNC12(mac, vif, (const void *)event,
						  event_len);
		break;
	case QLINK_EVENT_STA_DEAUTH:
		ret = FUNC13(mac, vif,
						   (const void *)event,
						   event_len);
		break;
	case QLINK_EVENT_MGMT_RECEIVED:
		ret = FUNC8(vif, (const void *)event,
						      event_len);
		break;
	case QLINK_EVENT_SCAN_RESULTS:
		ret = FUNC11(vif, (const void *)event,
						     event_len);
		break;
	case QLINK_EVENT_SCAN_COMPLETE:
		ret = FUNC10(mac, (const void *)event,
						      event_len);
		break;
	case QLINK_EVENT_BSS_JOIN:
		ret = FUNC4(vif, (const void *)event,
						 event_len);
		break;
	case QLINK_EVENT_BSS_LEAVE:
		ret = FUNC5(vif, (const void *)event,
						  event_len);
		break;
	case QLINK_EVENT_FREQ_CHANGE:
		ret = FUNC7(mac, (const void *)event,
						    event_len);
		break;
	case QLINK_EVENT_RADAR:
		ret = FUNC9(vif, (const void *)event,
					      event_len);
		break;
	case QLINK_EVENT_EXTERNAL_AUTH:
		ret = FUNC6(vif, (const void *)event,
						      event_len);
		break;
	default:
		FUNC3("unknown event type: %x\n", event_id);
		break;
	}

	return ret;
}