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
typedef  int u8 ;
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
#define  USB_REQ_CLEAR_FEATURE 140 
#define  USB_REQ_GET_CONFIGURATION 139 
#define  USB_REQ_GET_DESCRIPTOR 138 
#define  USB_REQ_GET_INTERFACE 137 
#define  USB_REQ_GET_STATUS 136 
#define  USB_REQ_SET_ADDRESS 135 
#define  USB_REQ_SET_CONFIGURATION 134 
#define  USB_REQ_SET_DESCRIPTOR 133 
#define  USB_REQ_SET_FEATURE 132 
#define  USB_REQ_SET_INTERFACE 131 
#define  USB_REQ_SET_ISOCH_DELAY 130 
#define  USB_REQ_SET_SEL 129 
#define  USB_REQ_SYNCH_FRAME 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 

const char *FUNC13(char *str, size_t size, __u8 bRequestType,
			    __u8 bRequest, __u16 wValue, __u16 wIndex,
			    __u16 wLength)
{
	switch (bRequest) {
	case USB_REQ_GET_STATUS:
		FUNC5(bRequestType, wIndex, wLength, str, size);
		break;
	case USB_REQ_CLEAR_FEATURE:
	case USB_REQ_SET_FEATURE:
		FUNC7(bRequestType, bRequest, wValue,
					     wIndex, str, size);
		break;
	case USB_REQ_SET_ADDRESS:
		FUNC6(wValue, str, size);
		break;
	case USB_REQ_GET_DESCRIPTOR:
	case USB_REQ_SET_DESCRIPTOR:
		FUNC4(bRequestType, bRequest, wValue,
					      wIndex, wLength, str, size);
		break;
	case USB_REQ_GET_CONFIGURATION:
		FUNC2(wLength, str, size);
		break;
	case USB_REQ_SET_CONFIGURATION:
		FUNC8(wValue, str, size);
		break;
	case USB_REQ_GET_INTERFACE:
		FUNC3(wIndex, wLength, str, size);
		break;
	case USB_REQ_SET_INTERFACE:
		FUNC9(wValue, wIndex, str, size);
		break;
	case USB_REQ_SYNCH_FRAME:
		FUNC12(wIndex, wLength, str, size);
		break;
	case USB_REQ_SET_SEL:
		FUNC11(wLength, str, size);
		break;
	case USB_REQ_SET_ISOCH_DELAY:
		FUNC10(wValue, str, size);
		break;
	default:
		FUNC1(str, size, "%02x %02x %02x %02x %02x %02x %02x %02x",
			 bRequestType, bRequest,
			 (u8)(FUNC0(wValue) & 0xff),
			 (u8)(FUNC0(wValue) >> 8),
			 (u8)(FUNC0(wIndex) & 0xff),
			 (u8)(FUNC0(wIndex) >> 8),
			 (u8)(FUNC0(wLength) & 0xff),
			 (u8)(FUNC0(wLength) >> 8));
	}

	return str;
}