#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbatm_vcc_data {int /*<<< orphan*/ * sarb; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  tasklet; } ;
struct usbatm_data {int /*<<< orphan*/  serialize; TYPE_2__ rx_channel; void* cached_vci; void* cached_vpi; struct usbatm_vcc_data* cached_vcc; } ;
struct atm_vcc {int /*<<< orphan*/  flags; void* vci; void* vpi; struct usbatm_vcc_data* dev_data; TYPE_1__* dev; } ;
struct TYPE_3__ {struct usbatm_data* dev_data; } ;

/* Variables and functions */
 void* ATM_VCI_UNSPEC ; 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_PARTIAL ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 void* ATM_VPI_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbatm_vcc_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usbatm_data*,struct atm_vcc*) ; 

__attribute__((used)) static void FUNC9(struct atm_vcc *vcc)
{
	struct usbatm_data *instance = vcc->dev->dev_data;
	struct usbatm_vcc_data *vcc_data = vcc->dev_data;

	if (!instance || !vcc_data)
		return;

	FUNC8(instance, vcc);

	FUNC4(&instance->serialize);	/* vs self, usbatm_atm_open, usbatm_usb_disconnect */

	FUNC6(&instance->rx_channel.tasklet);
	if (instance->cached_vcc == vcc_data) {
		instance->cached_vcc = NULL;
		instance->cached_vpi = ATM_VPI_UNSPEC;
		instance->cached_vci = ATM_VCI_UNSPEC;
	}
	FUNC3(&vcc_data->list);
	FUNC7(&instance->rx_channel.tasklet);

	FUNC2(vcc_data->sarb);
	vcc_data->sarb = NULL;

	FUNC1(vcc_data);
	vcc->dev_data = NULL;

	vcc->vpi = ATM_VPI_UNSPEC;
	vcc->vci = ATM_VCI_UNSPEC;
	FUNC0(ATM_VF_READY, &vcc->flags);
	FUNC0(ATM_VF_PARTIAL, &vcc->flags);
	FUNC0(ATM_VF_ADDR, &vcc->flags);

	FUNC5(&instance->serialize);
}