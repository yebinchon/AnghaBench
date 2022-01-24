#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void (* release ) (struct device*) ;struct device* parent; int /*<<< orphan*/  groups; int /*<<< orphan*/  class; } ;
struct usb_udc {int vbus; TYPE_1__ dev; int /*<<< orphan*/  list; struct usb_gadget* gadget; } ;
struct usb_gadget {TYPE_1__ dev; struct usb_udc* udc; int /*<<< orphan*/  work; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int FUNC1 (struct usb_udc*) ; 
 int FUNC2 (TYPE_1__*,char*,...) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct usb_udc* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  udc_class ; 
 int /*<<< orphan*/  udc_list ; 
 int /*<<< orphan*/  udc_lock ; 
 int /*<<< orphan*/  FUNC13 (struct usb_gadget*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_gadget_state_work ; 
 int /*<<< orphan*/  usb_udc_attr_groups ; 
 void FUNC14 (struct device*) ; 
 void FUNC15 (struct device*) ; 

int FUNC16(struct device *parent, struct usb_gadget *gadget,
		void (*release)(struct device *dev))
{
	struct usb_udc		*udc;
	int			ret = -ENOMEM;

	FUNC2(&gadget->dev, "gadget");
	FUNC0(&gadget->work, usb_gadget_state_work);
	gadget->dev.parent = parent;

	if (release)
		gadget->dev.release = release;
	else
		gadget->dev.release = usb_udc_nop_release;

	FUNC5(&gadget->dev);

	udc = FUNC7(sizeof(*udc), GFP_KERNEL);
	if (!udc)
		goto err_put_gadget;

	FUNC5(&udc->dev);
	udc->dev.release = usb_udc_release;
	udc->dev.class = udc_class;
	udc->dev.groups = usb_udc_attr_groups;
	udc->dev.parent = parent;
	ret = FUNC2(&udc->dev, "%s", FUNC6(&parent->kobj));
	if (ret)
		goto err_put_udc;

	ret = FUNC3(&gadget->dev);
	if (ret)
		goto err_put_udc;

	udc->gadget = gadget;
	gadget->udc = udc;

	FUNC10(&udc_lock);
	FUNC8(&udc->list, &udc_list);

	ret = FUNC3(&udc->dev);
	if (ret)
		goto err_unlist_udc;

	FUNC13(gadget, USB_STATE_NOTATTACHED);
	udc->vbus = true;

	/* pick up one of pending gadget drivers */
	ret = FUNC1(udc);
	if (ret)
		goto err_del_udc;

	FUNC11(&udc_lock);

	return 0;

 err_del_udc:
	FUNC4(&udc->dev);

 err_unlist_udc:
	FUNC9(&udc->list);
	FUNC11(&udc_lock);

	FUNC4(&gadget->dev);

 err_put_udc:
	FUNC12(&udc->dev);

 err_put_gadget:
	FUNC12(&gadget->dev);
	return ret;
}