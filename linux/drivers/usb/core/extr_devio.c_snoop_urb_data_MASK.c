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
struct urb {int num_sgs; int /*<<< orphan*/ * sg; int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 unsigned int USB_SG_SIZE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbfs_snoop ; 
 int /*<<< orphan*/  usbfs_snoop_max ; 

__attribute__((used)) static void FUNC3(struct urb *urb, unsigned len)
{
	int i, size;

	len = FUNC0(len, usbfs_snoop_max);
	if (!usbfs_snoop || len == 0)
		return;

	if (urb->num_sgs == 0) {
		FUNC1(KERN_DEBUG, "data: ", DUMP_PREFIX_NONE, 32, 1,
			urb->transfer_buffer, len, 1);
		return;
	}

	for (i = 0; i < urb->num_sgs && len; i++) {
		size = (len > USB_SG_SIZE) ? USB_SG_SIZE : len;
		FUNC1(KERN_DEBUG, "data: ", DUMP_PREFIX_NONE, 32, 1,
			FUNC2(&urb->sg[i]), size, 1);
		len -= size;
	}
}