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
typedef  size_t u8 ;
struct dwc3_event_depevt {size_t endpoint_number; int endpoint_event; int /*<<< orphan*/  parameters; } ;
struct dwc3_ep {int flags; } ;
struct dwc3 {struct dwc3_ep** eps; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t DWC3_DEPCMD_ENDTRANSFER ; 
#define  DWC3_DEPEVT_EPCMDCMPLT 133 
#define  DWC3_DEPEVT_RXTXFIFOEVT 132 
#define  DWC3_DEPEVT_STREAMEVT 131 
#define  DWC3_DEPEVT_XFERCOMPLETE 130 
#define  DWC3_DEPEVT_XFERINPROGRESS 129 
#define  DWC3_DEPEVT_XFERNOTREADY 128 
 int DWC3_EP_ENABLED ; 
 int DWC3_EP_TRANSFER_STARTED ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*,struct dwc3_event_depevt const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_ep*,struct dwc3_event_depevt const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3_ep*,struct dwc3_event_depevt const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc3_ep*) ; 

__attribute__((used)) static void FUNC5(struct dwc3 *dwc,
		const struct dwc3_event_depevt *event)
{
	struct dwc3_ep		*dep;
	u8			epnum = event->endpoint_number;
	u8			cmd;

	dep = dwc->eps[epnum];

	if (!(dep->flags & DWC3_EP_ENABLED)) {
		if (!(dep->flags & DWC3_EP_TRANSFER_STARTED))
			return;

		/* Handle only EPCMDCMPLT when EP disabled */
		if (event->endpoint_event != DWC3_DEPEVT_EPCMDCMPLT)
			return;
	}

	if (epnum == 0 || epnum == 1) {
		FUNC1(dwc, event);
		return;
	}

	switch (event->endpoint_event) {
	case DWC3_DEPEVT_XFERINPROGRESS:
		FUNC2(dep, event);
		break;
	case DWC3_DEPEVT_XFERNOTREADY:
		FUNC3(dep, event);
		break;
	case DWC3_DEPEVT_EPCMDCMPLT:
		cmd = FUNC0(event->parameters);

		if (cmd == DWC3_DEPCMD_ENDTRANSFER) {
			dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
			FUNC4(dep);
		}
		break;
	case DWC3_DEPEVT_STREAMEVT:
	case DWC3_DEPEVT_XFERCOMPLETE:
	case DWC3_DEPEVT_RXTXFIFOEVT:
		break;
	}
}