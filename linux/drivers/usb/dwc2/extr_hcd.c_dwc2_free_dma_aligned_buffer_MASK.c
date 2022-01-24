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
struct urb {int transfer_flags; size_t transfer_buffer_length; size_t actual_length; void* transfer_buffer; int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int URB_ALIGNED_TEMP_BUFFER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct urb*) ; 

__attribute__((used)) static void FUNC6(struct urb *urb)
{
	void *stored_xfer_buffer;
	size_t length;

	if (!(urb->transfer_flags & URB_ALIGNED_TEMP_BUFFER))
		return;

	/* Restore urb->transfer_buffer from the end of the allocated area */
	FUNC3(&stored_xfer_buffer,
	       FUNC0(urb->transfer_buffer + urb->transfer_buffer_length,
			 FUNC1()),
	       sizeof(urb->transfer_buffer));

	if (FUNC5(urb)) {
		if (FUNC4(urb->pipe))
			length = urb->transfer_buffer_length;
		else
			length = urb->actual_length;

		FUNC3(stored_xfer_buffer, urb->transfer_buffer, length);
	}
	FUNC2(urb->transfer_buffer);
	urb->transfer_buffer = stored_xfer_buffer;

	urb->transfer_flags &= ~URB_ALIGNED_TEMP_BUFFER;
}