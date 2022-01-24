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
struct zd_usb_rx {int urbs_count; int /*<<< orphan*/  lock; struct urb** urbs; } ;
struct zd_usb {struct zd_usb_rx rx; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RX_URBS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct urb* FUNC1 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct urb** FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct zd_usb*) ; 

__attribute__((used)) static int FUNC11(struct zd_usb *usb)
{
	int i, r;
	struct zd_usb_rx *rx = &usb->rx;
	struct urb **urbs;

	FUNC2(FUNC10(usb), "\n");

	r = -ENOMEM;
	urbs = FUNC5(RX_URBS_COUNT, sizeof(struct urb *), GFP_KERNEL);
	if (!urbs)
		goto error;
	for (i = 0; i < RX_URBS_COUNT; i++) {
		urbs[i] = FUNC1(usb);
		if (!urbs[i])
			goto error;
	}

	FUNC0(!FUNC4());
	FUNC6(&rx->lock);
	if (rx->urbs) {
		FUNC7(&rx->lock);
		r = 0;
		goto error;
	}
	rx->urbs = urbs;
	rx->urbs_count = RX_URBS_COUNT;
	FUNC7(&rx->lock);

	for (i = 0; i < RX_URBS_COUNT; i++) {
		r = FUNC9(urbs[i], GFP_KERNEL);
		if (r)
			goto error_submit;
	}

	return 0;
error_submit:
	for (i = 0; i < RX_URBS_COUNT; i++) {
		FUNC8(urbs[i]);
	}
	FUNC6(&rx->lock);
	rx->urbs = NULL;
	rx->urbs_count = 0;
	FUNC7(&rx->lock);
error:
	if (urbs) {
		for (i = 0; i < RX_URBS_COUNT; i++)
			FUNC3(urbs[i]);
	}
	return r;
}