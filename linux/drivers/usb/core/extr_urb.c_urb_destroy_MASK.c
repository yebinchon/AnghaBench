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
struct urb {int transfer_flags; struct urb* transfer_buffer; } ;
struct kref {int dummy; } ;

/* Variables and functions */
 int URB_FREE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct urb*) ; 
 struct urb* FUNC1 (struct kref*) ; 

__attribute__((used)) static void FUNC2(struct kref *kref)
{
	struct urb *urb = FUNC1(kref);

	if (urb->transfer_flags & URB_FREE_BUFFER)
		FUNC0(urb->transfer_buffer);

	FUNC0(urb);
}