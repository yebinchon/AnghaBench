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
struct zd1201 {int /*<<< orphan*/  endp_out2; int /*<<< orphan*/  usb; } ;
struct urb {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ZD1201_USB_CMDREQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,struct zd1201*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zd1201_usbfree ; 

__attribute__((used)) static int FUNC9(struct zd1201 *zd, int cmd, int parm0,
			int parm1, int parm2)
{
	unsigned char *command;
	int ret;
	struct urb *urb;

	command = FUNC3(16, GFP_ATOMIC);
	if (!command)
		return -ENOMEM;

	*((__le32*)command) = FUNC1(ZD1201_USB_CMDREQ);
	*((__le16*)&command[4]) = FUNC0(cmd);
	*((__le16*)&command[6]) = FUNC0(parm0);
	*((__le16*)&command[8]) = FUNC0(parm1);
	*((__le16*)&command[10])= FUNC0(parm2);

	urb = FUNC4(0, GFP_ATOMIC);
	if (!urb) {
		FUNC2(command);
		return -ENOMEM;
	}
	FUNC5(urb, zd->usb, FUNC7(zd->usb, zd->endp_out2),
			  command, 16, zd1201_usbfree, zd);
	ret = FUNC8(urb, GFP_ATOMIC);
	if (ret) {
		FUNC2(command);
		FUNC6(urb);
	}

	return ret;
}