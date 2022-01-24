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
struct work_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unusable ) (struct usbip_device*) ;int /*<<< orphan*/  (* reset ) (struct usbip_device*) ;int /*<<< orphan*/  (* shutdown ) (struct usbip_device*) ;} ;
struct usbip_device {int event; int /*<<< orphan*/  eh_waitq; TYPE_1__ eh_ops; } ;

/* Variables and functions */
 int USBIP_EH_RESET ; 
 int USBIP_EH_SHUTDOWN ; 
 int USBIP_EH_UNUSABLE ; 
 int /*<<< orphan*/ * current ; 
 struct usbip_device* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct usbip_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbip_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbip_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbip_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * worker_context ; 

__attribute__((used)) static void FUNC7(struct work_struct *work)
{
	struct usbip_device *ud;

	if (worker_context == NULL) {
		worker_context = current;
	}

	while ((ud = FUNC0()) != NULL) {
		FUNC5("pending event %lx\n", ud->event);

		/*
		 * NOTE: shutdown must come first.
		 * Shutdown the device.
		 */
		if (ud->event & USBIP_EH_SHUTDOWN) {
			ud->eh_ops.shutdown(ud);
			FUNC4(ud, USBIP_EH_SHUTDOWN);
		}

		/* Reset the device. */
		if (ud->event & USBIP_EH_RESET) {
			ud->eh_ops.reset(ud);
			FUNC4(ud, USBIP_EH_RESET);
		}

		/* Mark the device as unusable. */
		if (ud->event & USBIP_EH_UNUSABLE) {
			ud->eh_ops.unusable(ud);
			FUNC4(ud, USBIP_EH_UNUSABLE);
		}

		FUNC6(&ud->eh_waitq);
	}
}