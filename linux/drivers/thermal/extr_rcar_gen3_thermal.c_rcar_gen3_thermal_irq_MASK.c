#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct rcar_gen3_thermal_priv {int num_tscs; TYPE_1__** tscs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_GEN3_IRQSTR ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct rcar_gen3_thermal_priv *priv = data;
	u32 status;
	int i;

	for (i = 0; i < priv->num_tscs; i++) {
		status = FUNC0(priv->tscs[i], REG_GEN3_IRQSTR);
		FUNC1(priv->tscs[i], REG_GEN3_IRQSTR, 0);
		if (status)
			FUNC2(priv->tscs[i]->zone,
						   THERMAL_EVENT_UNSPECIFIED);
	}

	return IRQ_HANDLED;
}