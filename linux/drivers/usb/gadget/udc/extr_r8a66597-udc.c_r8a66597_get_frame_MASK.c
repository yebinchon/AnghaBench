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
struct usb_gadget {int dummy; } ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRMNUM ; 
 struct r8a66597* FUNC0 (struct usb_gadget*) ; 
 int FUNC1 (struct r8a66597*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *_gadget)
{
	struct r8a66597 *r8a66597 = FUNC0(_gadget);
	return FUNC1(r8a66597, FRMNUM) & 0x03FF;
}