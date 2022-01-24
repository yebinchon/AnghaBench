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
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct rtl_usb {int /*<<< orphan*/  rx_max_size; int /*<<< orphan*/  in_ep; int /*<<< orphan*/  udev; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  _rtl_rx_completed ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtl_usb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw, struct rtl_usb *rtlusb,
			      struct urb *urb, gfp_t gfp_mask)
{
	void *buf;

	buf = FUNC1(rtlusb->udev, rtlusb->rx_max_size, gfp_mask,
				 &urb->transfer_dma);
	if (!buf) {
		FUNC0("Failed to usb_alloc_coherent!!\n");
		return -ENOMEM;
	}

	FUNC2(urb, rtlusb->udev,
			  FUNC3(rtlusb->udev, rtlusb->in_ep),
			  buf, rtlusb->rx_max_size, _rtl_rx_completed, rtlusb);
	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	return 0;
}