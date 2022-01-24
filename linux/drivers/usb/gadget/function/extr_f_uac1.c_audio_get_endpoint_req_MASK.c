#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct usb_function {TYPE_1__* config; } ;
struct usb_ctrlrequest {int /*<<< orphan*/  bRequest; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int EOPNOTSUPP ; 
#define  UAC_GET_CUR 132 
#define  UAC_GET_MAX 131 
#define  UAC_GET_MEM 130 
#define  UAC_GET_MIN 129 
#define  UAC_GET_RES 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_function *f,
		const struct usb_ctrlrequest *ctrl)
{
	struct usb_composite_dev *cdev = f->config->cdev;
	int value = -EOPNOTSUPP;
	u8 ep = ((FUNC1(ctrl->wIndex) >> 8) & 0xFF);
	u16 len = FUNC1(ctrl->wLength);
	u16 w_value = FUNC1(ctrl->wValue);

	FUNC0(cdev, "bRequest 0x%x, w_value 0x%04x, len %d, endpoint %d\n",
			ctrl->bRequest, w_value, len, ep);

	switch (ctrl->bRequest) {
	case UAC_GET_CUR:
	case UAC_GET_MIN:
	case UAC_GET_MAX:
	case UAC_GET_RES:
		value = len;
		break;
	case UAC_GET_MEM:
		break;
	default:
		break;
	}

	return value;
}