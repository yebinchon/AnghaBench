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
struct smb347_charger {int mains_online; int usb_online; int /*<<< orphan*/  lock; TYPE_1__* pdata; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {scalar_t__ use_usb; scalar_t__ use_mains; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQSTAT_E ; 
 unsigned int IRQSTAT_E_DCIN_UV_STAT ; 
 unsigned int IRQSTAT_E_USBIN_UV_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct smb347_charger *smb)
{
	bool usb = false;
	bool dc = false;
	unsigned int val;
	int ret;

	ret = FUNC2(smb->regmap, IRQSTAT_E, &val);
	if (ret < 0)
		return ret;

	/*
	 * Dc and usb are set depending on whether they are enabled in
	 * platform data _and_ whether corresponding undervoltage is set.
	 */
	if (smb->pdata->use_mains)
		dc = !(val & IRQSTAT_E_DCIN_UV_STAT);
	if (smb->pdata->use_usb)
		usb = !(val & IRQSTAT_E_USBIN_UV_STAT);

	FUNC0(&smb->lock);
	ret = smb->mains_online != dc || smb->usb_online != usb;
	smb->mains_online = dc;
	smb->usb_online = usb;
	FUNC1(&smb->lock);

	return ret;
}