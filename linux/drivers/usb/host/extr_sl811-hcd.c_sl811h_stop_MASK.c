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
struct usb_hcd {int /*<<< orphan*/  rh_timer; } ;
struct sl811 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sl811* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct sl811*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct usb_hcd *hcd)
{
	struct sl811	*sl811 = FUNC1(hcd);
	unsigned long	flags;

	FUNC0(&hcd->rh_timer);

	FUNC3(&sl811->lock, flags);
	FUNC2(sl811, 0);
	FUNC4(&sl811->lock, flags);
}