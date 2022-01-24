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
struct urb {size_t transfer_buffer_length; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/ * transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 size_t USBTMC_BUFSIZE ; 
 int /*<<< orphan*/ * FUNC0 (size_t const,int /*<<< orphan*/ ) ; 
 struct urb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

__attribute__((used)) static struct urb *FUNC3(void)
{
	const size_t bufsize = USBTMC_BUFSIZE;
	u8 *dmabuf = NULL;
	struct urb *urb = FUNC1(0, GFP_KERNEL);

	if (!urb)
		return NULL;

	dmabuf = FUNC0(bufsize, GFP_KERNEL);
	if (!dmabuf) {
		FUNC2(urb);
		return NULL;
	}

	urb->transfer_buffer = dmabuf;
	urb->transfer_buffer_length = bufsize;
	urb->transfer_flags |= URB_FREE_BUFFER;
	return urb;
}