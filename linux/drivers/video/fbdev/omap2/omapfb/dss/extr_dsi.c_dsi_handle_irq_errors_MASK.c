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
struct platform_device {int dummy; } ;
struct dsi_data {int errors; int /*<<< orphan*/  errors_lock; } ;

/* Variables and functions */
 int DSI_CIO_IRQ_ERROR_MASK ; 
 int DSI_IRQ_ERROR_MASK ; 
 int DSI_VC_IRQ_ERROR_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ debug_irq ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct platform_device *dsidev, u32 irqstatus,
		u32 *vcstatus, u32 ciostatus)
{
	struct dsi_data *dsi = FUNC1(dsidev);
	int i;

	if (irqstatus & DSI_IRQ_ERROR_MASK) {
		FUNC0("DSI error, irqstatus %x\n", irqstatus);
		FUNC2(irqstatus);
		FUNC5(&dsi->errors_lock);
		dsi->errors |= irqstatus & DSI_IRQ_ERROR_MASK;
		FUNC6(&dsi->errors_lock);
	} else if (debug_irq) {
		FUNC2(irqstatus);
	}

	for (i = 0; i < 4; ++i) {
		if (vcstatus[i] & DSI_VC_IRQ_ERROR_MASK) {
			FUNC0("DSI VC(%d) error, vc irqstatus %x\n",
				       i, vcstatus[i]);
			FUNC4(i, vcstatus[i]);
		} else if (debug_irq) {
			FUNC4(i, vcstatus[i]);
		}
	}

	if (ciostatus & DSI_CIO_IRQ_ERROR_MASK) {
		FUNC0("DSI CIO error, cio irqstatus %x\n", ciostatus);
		FUNC3(ciostatus);
	} else if (debug_irq) {
		FUNC3(ciostatus);
	}
}