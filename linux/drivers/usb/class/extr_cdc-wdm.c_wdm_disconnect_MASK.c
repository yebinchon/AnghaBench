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
struct wdm_device {int /*<<< orphan*/  count; int /*<<< orphan*/  device_list; int /*<<< orphan*/  rlock; int /*<<< orphan*/  wlock; int /*<<< orphan*/  service_outs_intr; int /*<<< orphan*/  rxwork; int /*<<< orphan*/  wait; int /*<<< orphan*/  iuspin; int /*<<< orphan*/  flags; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDM_DISCONNECTING ; 
 int /*<<< orphan*/  WDM_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdm_class ; 
 int /*<<< orphan*/  wdm_device_list_lock ; 
 struct wdm_device* FUNC14 (struct usb_interface*) ; 
 int /*<<< orphan*/  wdm_mutex ; 

__attribute__((used)) static void FUNC15(struct usb_interface *intf)
{
	struct wdm_device *desc;
	unsigned long flags;

	FUNC12(intf, &wdm_class);
	desc = FUNC14(intf);
	FUNC5(&wdm_mutex);

	/* the spinlock makes sure no new urbs are generated in the callbacks */
	FUNC9(&desc->iuspin, flags);
	FUNC7(WDM_DISCONNECTING, &desc->flags);
	FUNC7(WDM_READ, &desc->flags);
	FUNC11(&desc->iuspin, flags);
	FUNC13(&desc->wait);
	FUNC5(&desc->rlock);
	FUNC5(&desc->wlock);
	FUNC3(desc);
	FUNC0(&desc->rxwork);
	FUNC0(&desc->service_outs_intr);
	FUNC6(&desc->wlock);
	FUNC6(&desc->rlock);

	/* the desc->intf pointer used as list key is now invalid */
	FUNC8(&wdm_device_list_lock);
	FUNC4(&desc->device_list);
	FUNC10(&wdm_device_list_lock);

	if (!desc->count)
		FUNC1(desc);
	else
		FUNC2(&intf->dev, "%d open files - postponing cleanup\n", desc->count);
	FUNC6(&wdm_mutex);
}