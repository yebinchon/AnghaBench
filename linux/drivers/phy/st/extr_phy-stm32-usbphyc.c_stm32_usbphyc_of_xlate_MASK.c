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
struct stm32_usbphyc_phy {int index; struct phy* phy; } ;
struct stm32_usbphyc {int nphys; scalar_t__ switch_setup; struct stm32_usbphyc_phy** phys; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct phy {TYPE_1__ dev; } ;
struct of_phandle_args {int args_count; scalar_t__* args; struct device_node* np; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct stm32_usbphyc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_usbphyc*,scalar_t__) ; 

__attribute__((used)) static struct phy *FUNC4(struct device *dev,
					  struct of_phandle_args *args)
{
	struct stm32_usbphyc *usbphyc = FUNC2(dev);
	struct stm32_usbphyc_phy *usbphyc_phy = NULL;
	struct device_node *phynode = args->np;
	int port = 0;

	for (port = 0; port < usbphyc->nphys; port++) {
		if (phynode == usbphyc->phys[port]->phy->dev.of_node) {
			usbphyc_phy = usbphyc->phys[port];
			break;
		}
	}
	if (!usbphyc_phy) {
		FUNC1(dev, "failed to find phy\n");
		return FUNC0(-EINVAL);
	}

	if (((usbphyc_phy->index == 0) && (args->args_count != 0)) ||
	    ((usbphyc_phy->index == 1) && (args->args_count != 1))) {
		FUNC1(dev, "invalid number of cells for phy port%d\n",
			usbphyc_phy->index);
		return FUNC0(-EINVAL);
	}

	/* Configure the UTMI switch for PHY port#2 */
	if (usbphyc_phy->index == 1) {
		if (usbphyc->switch_setup < 0) {
			FUNC3(usbphyc, args->args[0]);
		} else {
			if (args->args[0] != usbphyc->switch_setup) {
				FUNC1(dev, "phy port1 already used\n");
				return FUNC0(-EBUSY);
			}
		}
	}

	return usbphyc_phy->phy;
}