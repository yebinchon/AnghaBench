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
typedef  int __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int USB_DEVICE_TEST_MODE ; 
 int USB_DIR_IN ; 
 int USB_ENDPOINT_HALT ; 
 int USB_INTRF_FUNC_SUSPEND ; 
#define  USB_RECIP_DEVICE 130 
#define  USB_RECIP_ENDPOINT 129 
#define  USB_RECIP_INTERFACE 128 
 int USB_RECIP_MASK ; 
 int USB_REQ_CLEAR_FEATURE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char*,char*,...) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(__u8 bRequestType,
					 __u8 bRequest, __u16 wValue,
					 __u16 wIndex, char *str, size_t size)
{
	switch (bRequestType & USB_RECIP_MASK) {
	case USB_RECIP_DEVICE:
		FUNC0(str, size, "%s Device Feature(%s%s)",
			 bRequest == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
			 FUNC1(wValue),
			 wValue == USB_DEVICE_TEST_MODE ?
			 FUNC2(wIndex) : "");
		break;
	case USB_RECIP_INTERFACE:
		FUNC0(str, size, "%s Interface Feature(%s)",
			 bRequest == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
			 wValue == USB_INTRF_FUNC_SUSPEND ?
			 "Function Suspend" : "UNKNOWN");
		break;
	case USB_RECIP_ENDPOINT:
		FUNC0(str, size, "%s Endpoint Feature(%s ep%d%s)",
			 bRequest == USB_REQ_CLEAR_FEATURE ? "Clear" : "Set",
			 wValue == USB_ENDPOINT_HALT ? "Halt" : "UNKNOWN",
			 wIndex & ~USB_DIR_IN,
			 wIndex & USB_DIR_IN ? "in" : "out");
		break;
	}
}