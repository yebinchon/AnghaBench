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
struct usbhs_priv {int dummy; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCPCTR ; 
 int /*<<< orphan*/  SUREQ ; 
 int /*<<< orphan*/  USBINDX ; 
 int /*<<< orphan*/  USBLENG ; 
 int /*<<< orphan*/  USBREQ ; 
 int /*<<< orphan*/  USBVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct usbhs_priv *priv, struct usb_ctrlrequest *req)
{
	FUNC2(priv, USBREQ,  (req->bRequest << 8) | req->bRequestType);
	FUNC2(priv, USBVAL,  FUNC0(req->wValue));
	FUNC2(priv, USBINDX, FUNC0(req->wIndex));
	FUNC2(priv, USBLENG, FUNC0(req->wLength));

	FUNC1(priv, DCPCTR, SUREQ, SUREQ);
}