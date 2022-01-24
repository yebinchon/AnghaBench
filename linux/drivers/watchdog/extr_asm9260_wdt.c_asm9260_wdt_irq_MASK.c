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
typedef  int u32 ;
struct asm9260_wdt_priv {scalar_t__ mode; int /*<<< orphan*/  dev; scalar_t__ iobase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BM_MOD_WDINT ; 
 scalar_t__ DEBUG ; 
 scalar_t__ HW_WDMOD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct asm9260_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *devid)
{
	struct asm9260_wdt_priv *priv = devid;
	u32 stat;

	stat = FUNC2(priv->iobase + HW_WDMOD);
	if (!(stat & BM_MOD_WDINT))
		return IRQ_NONE;

	if (priv->mode == DEBUG) {
		FUNC1(priv->dev, "Watchdog Timeout. Do nothing.\n");
	} else {
		FUNC1(priv->dev, "Watchdog Timeout. Doing SW Reset.\n");
		FUNC0(priv);
	}

	return IRQ_HANDLED;
}