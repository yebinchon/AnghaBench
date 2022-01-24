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
typedef  size_t u32 ;
struct usb_device {int dummy; } ;
struct dvobj_priv {unsigned int* Queue2Pipe; int /*<<< orphan*/ * RtInPipe; struct usb_device* pusbdev; } ;

/* Variables and functions */
 size_t HW_QUEUE_ENTRY ; 
 size_t RECV_BULK_IN_ADDR ; 
 size_t RECV_INT_IN_ADDR ; 
 unsigned int FUNC0 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct usb_device*,unsigned int) ; 

unsigned int FUNC2(struct dvobj_priv *pdvobj, u32 addr)
{
	unsigned int pipe = 0, ep_num = 0;
	struct usb_device *pusbd = pdvobj->pusbdev;

	if (addr == RECV_BULK_IN_ADDR) {
		pipe = FUNC0(pusbd, pdvobj->RtInPipe[0]);
	} else if (addr == RECV_INT_IN_ADDR) {
		pipe = FUNC0(pusbd, pdvobj->RtInPipe[1]);
	} else if (addr < HW_QUEUE_ENTRY) {
		ep_num = pdvobj->Queue2Pipe[addr];
		pipe = FUNC1(pusbd, ep_num);
	}

	return pipe;
}