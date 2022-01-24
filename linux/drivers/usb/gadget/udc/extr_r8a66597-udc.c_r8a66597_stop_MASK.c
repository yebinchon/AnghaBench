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
struct r8a66597 {int /*<<< orphan*/ * driver; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTENB0 ; 
 int /*<<< orphan*/  VBSE ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*) ; 
 struct r8a66597* FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *gadget)
{
	struct r8a66597 *r8a66597 = FUNC1(gadget);
	unsigned long flags;

	FUNC3(&r8a66597->lock, flags);
	FUNC2(r8a66597, VBSE, INTENB0);
	FUNC0(r8a66597);
	FUNC4(&r8a66597->lock, flags);

	r8a66597->driver = NULL;
	return 0;
}