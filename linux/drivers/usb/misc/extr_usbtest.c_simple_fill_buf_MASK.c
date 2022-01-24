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
typedef  int /*<<< orphan*/  u8 ;
struct urb {unsigned int transfer_buffer_length; int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; int /*<<< orphan*/ * transfer_buffer; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int pattern ; 

__attribute__((used)) static void FUNC2(struct urb *urb)
{
	unsigned	i;
	u8		*buf = urb->transfer_buffer;
	unsigned	len = urb->transfer_buffer_length;
	unsigned	maxpacket;

	switch (pattern) {
	default:
		/* FALLTHROUGH */
	case 0:
		FUNC1(buf, 0, len);
		break;
	case 1:			/* mod63 */
		maxpacket = FUNC0(urb->dev, urb->pipe);
		for (i = 0; i < len; i++)
			*buf++ = (u8) ((i % maxpacket) % 63);
		break;
	}
}