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
struct uwb_rc_evt_drp {void* ie_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_ie_hdr {int element_id; } ;
struct uwb_ie_drp_avail {int dummy; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int dummy; } ;

/* Variables and functions */
#define  UWB_IE_DRP 129 
#define  UWB_IE_DRP_AVAILABILITY 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_rc*,struct uwb_dev*,struct uwb_ie_drp_avail*) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc*,struct uwb_rc_evt_drp*,struct uwb_dev*,struct uwb_ie_drp*) ; 
 struct uwb_ie_hdr* FUNC3 (void**,size_t*) ; 

__attribute__((used)) static
void FUNC4(struct uwb_rc *rc, struct uwb_rc_evt_drp *drp_evt,
			 size_t ielen, struct uwb_dev *src_dev)
{
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_ie_hdr *ie_hdr;
	void *ptr;

	ptr = drp_evt->ie_data;
	for (;;) {
		ie_hdr = FUNC3(&ptr, &ielen);
		if (!ie_hdr)
			break;

		switch (ie_hdr->element_id) {
		case UWB_IE_DRP_AVAILABILITY:
			FUNC1(rc, src_dev, (struct uwb_ie_drp_avail *)ie_hdr);
			break;
		case UWB_IE_DRP:
			FUNC2(rc, drp_evt, src_dev, (struct uwb_ie_drp *)ie_hdr);
			break;
		default:
			FUNC0(dev, "unexpected IE in DRP notification\n");
			break;
		}
	}

	if (ielen > 0)
		FUNC0(dev, "%d octets remaining in DRP notification\n",
			 (int)ielen);
}