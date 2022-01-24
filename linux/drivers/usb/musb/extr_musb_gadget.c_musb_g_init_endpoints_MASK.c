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
typedef  scalar_t__ u8 ;
struct musb_hw_ep {int /*<<< orphan*/  ep_out; scalar_t__ max_packet_sz_rx; int /*<<< orphan*/  ep_in; scalar_t__ max_packet_sz_tx; scalar_t__ is_shared_fifo; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep_list; } ;
struct musb {scalar_t__ nr_endpoints; struct musb_hw_ep* endpoints; TYPE_1__ g; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC2(struct musb *musb)
{
	u8			epnum;
	struct musb_hw_ep	*hw_ep;
	unsigned		count = 0;

	/* initialize endpoint list just once */
	FUNC0(&(musb->g.ep_list));

	for (epnum = 0, hw_ep = musb->endpoints;
			epnum < musb->nr_endpoints;
			epnum++, hw_ep++) {
		if (hw_ep->is_shared_fifo /* || !epnum */) {
			FUNC1(musb, &hw_ep->ep_in, epnum, 0);
			count++;
		} else {
			if (hw_ep->max_packet_sz_tx) {
				FUNC1(musb, &hw_ep->ep_in,
							epnum, 1);
				count++;
			}
			if (hw_ep->max_packet_sz_rx) {
				FUNC1(musb, &hw_ep->ep_out,
							epnum, 0);
				count++;
			}
		}
	}
}