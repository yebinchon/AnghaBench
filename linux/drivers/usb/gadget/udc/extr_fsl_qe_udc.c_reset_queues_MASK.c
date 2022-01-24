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
typedef  scalar_t__ u8 ;
struct qe_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  driver; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 scalar_t__ USB_MAX_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qe_udc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct qe_udc *udc)
{
	u8 pipe;

	for (pipe = 0; pipe < USB_MAX_ENDPOINTS; pipe++)
		FUNC2(udc, pipe);

	/* report disconnect; the driver is already quiesced */
	FUNC1(&udc->lock);
	FUNC3(&udc->gadget, udc->driver);
	FUNC0(&udc->lock);

	return 0;
}