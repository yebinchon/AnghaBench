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
typedef  int u32 ;
struct TYPE_2__ {int host_channels; scalar_t__ uframe_sched; int /*<<< orphan*/  host_dma; } ;
struct dwc2_hsotg {int available_host_channels; scalar_t__ periodic_channels; scalar_t__ non_periodic_channels; TYPE_1__ params; int /*<<< orphan*/  free_hc_list; struct dwc2_host_chan** hc_ptr_array; } ;
struct dwc2_host_chan {int /*<<< orphan*/ * qh; int /*<<< orphan*/  hc_list_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HCCHAR_CHDIS ; 
 int HCCHAR_CHENA ; 
 int HCCHAR_EPDIR ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,struct dwc2_host_chan*) ; 
 int FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg)
{
	int num_channels = hsotg->params.host_channels;
	struct dwc2_host_chan *channel;
	u32 hcchar;
	int i;

	if (!hsotg->params.host_dma) {
		/* Flush out any channel requests in slave mode */
		for (i = 0; i < num_channels; i++) {
			channel = hsotg->hc_ptr_array[i];
			if (!FUNC5(&channel->hc_list_entry))
				continue;
			hcchar = FUNC2(hsotg, FUNC0(i));
			if (hcchar & HCCHAR_CHENA) {
				hcchar &= ~(HCCHAR_CHENA | HCCHAR_EPDIR);
				hcchar |= HCCHAR_CHDIS;
				FUNC3(hsotg, hcchar, FUNC0(i));
			}
		}
	}

	for (i = 0; i < num_channels; i++) {
		channel = hsotg->hc_ptr_array[i];
		if (!FUNC5(&channel->hc_list_entry))
			continue;
		hcchar = FUNC2(hsotg, FUNC0(i));
		if (hcchar & HCCHAR_CHENA) {
			/* Halt the channel */
			hcchar |= HCCHAR_CHDIS;
			FUNC3(hsotg, hcchar, FUNC0(i));
		}

		FUNC1(hsotg, channel);
		FUNC4(&channel->hc_list_entry, &hsotg->free_hc_list);
		/*
		 * Added for Descriptor DMA to prevent channel double cleanup in
		 * release_channel_ddma(), which is called from ep_disable when
		 * device disconnects
		 */
		channel->qh = NULL;
	}
	/* All channels have been freed, mark them available */
	if (hsotg->params.uframe_sched) {
		hsotg->available_host_channels =
			hsotg->params.host_channels;
	} else {
		hsotg->non_periodic_channels = 0;
		hsotg->periodic_channels = 0;
	}
}