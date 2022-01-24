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
struct vnt_usb_send_context {scalar_t__ urb; } ;
struct vnt_private {int num_tx_context; struct vnt_usb_send_context** tx_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_usb_send_context*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct vnt_private *priv)
{
	struct vnt_usb_send_context *tx_context;
	int ii;

	for (ii = 0; ii < priv->num_tx_context; ii++) {
		tx_context = priv->tx_context[ii];
		if (!tx_context)
			continue;

		/* deallocate URBs */
		if (tx_context->urb) {
			FUNC2(tx_context->urb);
			FUNC1(tx_context->urb);
		}

		FUNC0(tx_context);
	}
}