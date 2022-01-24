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
struct urb {int transfer_flags; scalar_t__ transfer_buffer; scalar_t__ transfer_dma; scalar_t__ transfer_buffer_length; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int URB_NO_TRANSFER_DMA_MAP ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	unsigned long offset = FUNC0(urb->transfer_buffer);

	if (urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
		FUNC2(
			urb->dev,
			urb->transfer_buffer_length + offset,
			urb->transfer_buffer - offset,
			urb->transfer_dma - offset);
	else
		FUNC1(urb->transfer_buffer - offset);
	FUNC3(urb);
}