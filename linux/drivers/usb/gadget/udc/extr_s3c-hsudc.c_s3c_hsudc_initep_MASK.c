#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type_control; int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_6__ {int /*<<< orphan*/  maxpacket; TYPE_2__ caps; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; int /*<<< orphan*/  ep_list; } ;
struct s3c_hsudc_ep {int bEndpointAddress; TYPE_3__ ep; scalar_t__ wedge; scalar_t__ stopped; scalar_t__ fifo; int /*<<< orphan*/  name; struct s3c_hsudc* dev; int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep_list; } ;
struct s3c_hsudc {scalar_t__ regs; TYPE_1__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ S3C_MPR ; 
 int USB_DIR_IN ; 
 char* ep0name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s3c_hsudc_ep_ops ; 
 int /*<<< orphan*/  FUNC3 (struct s3c_hsudc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct s3c_hsudc *hsudc,
				struct s3c_hsudc_ep *hsep, int epnum)
{
	char *dir;

	if ((epnum % 2) == 0) {
		dir = "out";
	} else {
		dir = "in";
		hsep->bEndpointAddress = USB_DIR_IN;
	}

	hsep->bEndpointAddress |= epnum;
	if (epnum)
		FUNC4(hsep->name, sizeof(hsep->name), "ep%d%s", epnum, dir);
	else
		FUNC4(hsep->name, sizeof(hsep->name), "%s", ep0name);

	FUNC0(&hsep->queue);
	FUNC0(&hsep->ep.ep_list);
	if (epnum)
		FUNC2(&hsep->ep.ep_list, &hsudc->gadget.ep_list);

	hsep->dev = hsudc;
	hsep->ep.name = hsep->name;
	FUNC5(&hsep->ep, epnum ? 512 : 64);
	hsep->ep.ops = &s3c_hsudc_ep_ops;
	hsep->fifo = hsudc->regs + FUNC1(epnum);
	hsep->ep.desc = NULL;
	hsep->stopped = 0;
	hsep->wedge = 0;

	if (epnum == 0) {
		hsep->ep.caps.type_control = true;
		hsep->ep.caps.dir_in = true;
		hsep->ep.caps.dir_out = true;
	} else {
		hsep->ep.caps.type_iso = true;
		hsep->ep.caps.type_bulk = true;
		hsep->ep.caps.type_int = true;
	}

	if (epnum & 1)
		hsep->ep.caps.dir_in = true;
	else
		hsep->ep.caps.dir_out = true;

	FUNC3(hsudc, epnum);
	FUNC6(hsep->ep.maxpacket, hsudc->regs + S3C_MPR);
}