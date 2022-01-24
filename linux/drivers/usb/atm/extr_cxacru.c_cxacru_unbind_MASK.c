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
struct usbatm_data {struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct cxacru_data {scalar_t__ poll_state; scalar_t__ rcv_buf; scalar_t__ snd_buf; int /*<<< orphan*/  rcv_urb; int /*<<< orphan*/  snd_urb; int /*<<< orphan*/  poll_work; int /*<<< orphan*/  poll_state_serialize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CXPOLL_SHUTDOWN ; 
 scalar_t__ CXPOLL_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct cxacru_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usbatm_data*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct usbatm_data *usbatm_instance,
		struct usb_interface *intf)
{
	struct cxacru_data *instance = usbatm_instance->driver_data;
	int is_polling = 1;

	FUNC6(usbatm_instance, "cxacru_unbind entered\n");

	if (!instance) {
		FUNC6(usbatm_instance, "cxacru_unbind: NULL instance!\n");
		return;
	}

	FUNC4(&instance->poll_state_serialize);
	FUNC0(instance->poll_state == CXPOLL_SHUTDOWN);

	/* ensure that status polling continues unless
	 * it has already stopped */
	if (instance->poll_state == CXPOLL_STOPPED)
		is_polling = 0;

	/* stop polling from being stopped or started */
	instance->poll_state = CXPOLL_SHUTDOWN;
	FUNC5(&instance->poll_state_serialize);

	if (is_polling)
		FUNC1(&instance->poll_work);

	FUNC8(instance->snd_urb);
	FUNC8(instance->rcv_urb);
	FUNC7(instance->snd_urb);
	FUNC7(instance->rcv_urb);

	FUNC2((unsigned long) instance->snd_buf);
	FUNC2((unsigned long) instance->rcv_buf);

	FUNC3(instance);

	usbatm_instance->driver_data = NULL;
}