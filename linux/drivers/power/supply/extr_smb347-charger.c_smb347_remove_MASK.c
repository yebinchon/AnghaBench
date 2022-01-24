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
struct smb347_charger {int /*<<< orphan*/  mains; TYPE_1__* pdata; int /*<<< orphan*/  usb; int /*<<< orphan*/  battery; } ;
struct i2c_client {scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ use_mains; scalar_t__ use_usb; int /*<<< orphan*/  irq_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct smb347_charger*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct smb347_charger* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smb347_charger*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct smb347_charger *smb = FUNC2(client);

	if (client->irq) {
		FUNC4(smb);
		FUNC0(client->irq, smb);
		FUNC1(smb->pdata->irq_gpio);
	}

	FUNC3(smb->battery);
	if (smb->pdata->use_usb)
		FUNC3(smb->usb);
	if (smb->pdata->use_mains)
		FUNC3(smb->mains);
	return 0;
}