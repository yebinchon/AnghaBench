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
struct max8925_power_info {int ac_online; struct max8925_chip* chip; } ;
struct max8925_chip {int irq_base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  MAX8925_IRQ_VCHG_DC_F 138 
#define  MAX8925_IRQ_VCHG_DC_OVP 137 
#define  MAX8925_IRQ_VCHG_DC_R 136 
#define  MAX8925_IRQ_VCHG_DONE 135 
#define  MAX8925_IRQ_VCHG_RST 134 
#define  MAX8925_IRQ_VCHG_SYSLOW_F 133 
#define  MAX8925_IRQ_VCHG_SYSLOW_R 132 
#define  MAX8925_IRQ_VCHG_THM_OK_F 131 
#define  MAX8925_IRQ_VCHG_THM_OK_R 130 
#define  MAX8925_IRQ_VCHG_TMR_FAULT 129 
#define  MAX8925_IRQ_VCHG_TOPOFF 128 
 int /*<<< orphan*/  FUNC0 (struct max8925_power_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct max8925_power_info *info = (struct max8925_power_info *)data;
	struct max8925_chip *chip = info->chip;

	switch (irq - chip->irq_base) {
	case MAX8925_IRQ_VCHG_DC_R:
		info->ac_online = 1;
		FUNC0(info, 1);
		FUNC1(chip->dev, "Adapter inserted\n");
		break;
	case MAX8925_IRQ_VCHG_DC_F:
		info->ac_online = 0;
		FUNC0(info, 0);
		FUNC1(chip->dev, "Adapter removed\n");
		break;
	case MAX8925_IRQ_VCHG_THM_OK_F:
		/* Battery is not ready yet */
		FUNC1(chip->dev, "Battery temperature is out of range\n");
		/* Fall through */
	case MAX8925_IRQ_VCHG_DC_OVP:
		FUNC1(chip->dev, "Error detection\n");
		FUNC0(info, 0);
		break;
	case MAX8925_IRQ_VCHG_THM_OK_R:
		/* Battery is ready now */
		FUNC1(chip->dev, "Battery temperature is in range\n");
		break;
	case MAX8925_IRQ_VCHG_SYSLOW_R:
		/* VSYS is low */
		FUNC2(chip->dev, "Sys power is too low\n");
		break;
	case MAX8925_IRQ_VCHG_SYSLOW_F:
		FUNC1(chip->dev, "Sys power is above low threshold\n");
		break;
	case MAX8925_IRQ_VCHG_DONE:
		FUNC0(info, 0);
		FUNC1(chip->dev, "Charging is done\n");
		break;
	case MAX8925_IRQ_VCHG_TOPOFF:
		FUNC1(chip->dev, "Charging in top-off mode\n");
		break;
	case MAX8925_IRQ_VCHG_TMR_FAULT:
		FUNC0(info, 0);
		FUNC1(chip->dev, "Safe timer is expired\n");
		break;
	case MAX8925_IRQ_VCHG_RST:
		FUNC0(info, 0);
		FUNC1(chip->dev, "Charger is reset\n");
		break;
	}
	return IRQ_HANDLED;
}