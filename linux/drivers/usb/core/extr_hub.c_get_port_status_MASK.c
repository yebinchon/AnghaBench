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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EPIPE ; 
 int ETIMEDOUT ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  USB_REQ_GET_STATUS ; 
 int USB_RT_PORT ; 
 int USB_STS_RETRIES ; 
 int /*<<< orphan*/  USB_STS_TIMEOUT ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_device *hdev, int port1,
			   void *data, u16 value, u16 length)
{
	int i, status = -ETIMEDOUT;

	for (i = 0; i < USB_STS_RETRIES &&
			(status == -ETIMEDOUT || status == -EPIPE); i++) {
		status = FUNC0(hdev, FUNC1(hdev, 0),
			USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_PORT, value,
			port1, data, length, USB_STS_TIMEOUT);
	}
	return status;
}