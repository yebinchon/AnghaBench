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
struct TYPE_2__ {char const* bus_name; struct device* sysdev; struct device* controller; } ;
struct usb_hcd {int speed; char* product_desc; struct hc_driver const* driver; int /*<<< orphan*/  died_work; int /*<<< orphan*/  wakeup_work; int /*<<< orphan*/  rh_timer; TYPE_1__ self; int /*<<< orphan*/  kref; struct usb_hcd* shared_hcd; struct usb_hcd* primary_hcd; struct usb_hcd* bandwidth_mutex; struct usb_hcd* address0_mutex; } ;
struct hc_driver {int flags; char* product_desc; scalar_t__ hcd_priv_size; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HCD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct usb_hcd*) ; 
 int /*<<< orphan*/  hcd_died_work ; 
 int /*<<< orphan*/  hcd_resume_work ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rh_timer_func ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  usb_port_peer_mutex ; 

struct usb_hcd *FUNC12(const struct hc_driver *driver,
		struct device *sysdev, struct device *dev, const char *bus_name,
		struct usb_hcd *primary_hcd)
{
	struct usb_hcd *hcd;

	hcd = FUNC6(sizeof(*hcd) + driver->hcd_priv_size, GFP_KERNEL);
	if (!hcd)
		return NULL;
	if (primary_hcd == NULL) {
		hcd->address0_mutex = FUNC4(sizeof(*hcd->address0_mutex),
				GFP_KERNEL);
		if (!hcd->address0_mutex) {
			FUNC3(hcd);
			FUNC1(dev, "hcd address0 mutex alloc failed\n");
			return NULL;
		}
		FUNC7(hcd->address0_mutex);
		hcd->bandwidth_mutex = FUNC4(sizeof(*hcd->bandwidth_mutex),
				GFP_KERNEL);
		if (!hcd->bandwidth_mutex) {
			FUNC3(hcd->address0_mutex);
			FUNC3(hcd);
			FUNC1(dev, "hcd bandwidth mutex alloc failed\n");
			return NULL;
		}
		FUNC7(hcd->bandwidth_mutex);
		FUNC2(dev, hcd);
	} else {
		FUNC8(&usb_port_peer_mutex);
		hcd->address0_mutex = primary_hcd->address0_mutex;
		hcd->bandwidth_mutex = primary_hcd->bandwidth_mutex;
		hcd->primary_hcd = primary_hcd;
		primary_hcd->primary_hcd = primary_hcd;
		hcd->shared_hcd = primary_hcd;
		primary_hcd->shared_hcd = hcd;
		FUNC9(&usb_port_peer_mutex);
	}

	FUNC5(&hcd->kref);

	FUNC11(&hcd->self);
	hcd->self.controller = dev;
	hcd->self.sysdev = sysdev;
	hcd->self.bus_name = bus_name;

	FUNC10(&hcd->rh_timer, rh_timer_func, 0);
#ifdef CONFIG_PM
	INIT_WORK(&hcd->wakeup_work, hcd_resume_work);
#endif

	FUNC0(&hcd->died_work, hcd_died_work);

	hcd->driver = driver;
	hcd->speed = driver->flags & HCD_MASK;
	hcd->product_desc = (driver->product_desc) ? driver->product_desc :
			"USB Host Controller";
	return hcd;
}