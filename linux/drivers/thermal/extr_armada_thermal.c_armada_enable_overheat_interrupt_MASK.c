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
typedef  int /*<<< orphan*/  u32 ;
struct armada_thermal_priv {int /*<<< orphan*/  syscon; struct armada_thermal_data* data; } ;
struct armada_thermal_data {int /*<<< orphan*/  syscon_control1_off; int /*<<< orphan*/  dfx_server_irq_mask_off; int /*<<< orphan*/  dfx_server_irq_en; int /*<<< orphan*/  dfx_irq_mask_off; int /*<<< orphan*/  dfx_overheat_irq; int /*<<< orphan*/  dfx_irq_cause_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL1_TSEN_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct armada_thermal_priv *priv)
{
	struct armada_thermal_data *data = priv->data;
	u32 reg;

	/* Clear DFX temperature IRQ cause */
	FUNC0(priv->syscon, data->dfx_irq_cause_off, &reg);

	/* Enable DFX Temperature IRQ */
	FUNC0(priv->syscon, data->dfx_irq_mask_off, &reg);
	reg |= data->dfx_overheat_irq;
	FUNC1(priv->syscon, data->dfx_irq_mask_off, reg);

	/* Enable DFX server IRQ */
	FUNC0(priv->syscon, data->dfx_server_irq_mask_off, &reg);
	reg |= data->dfx_server_irq_en;
	FUNC1(priv->syscon, data->dfx_server_irq_mask_off, reg);

	/* Enable overheat interrupt */
	FUNC0(priv->syscon, data->syscon_control1_off, &reg);
	reg |= CONTROL1_TSEN_INT_EN;
	FUNC1(priv->syscon, data->syscon_control1_off, reg);
}