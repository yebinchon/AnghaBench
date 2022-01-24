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
struct dsi_data {int /*<<< orphan*/  isr_tables_copy; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  isr_tables; int /*<<< orphan*/  te_timer; int /*<<< orphan*/  is_enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_COMPLEXIO_IRQ_STATUS ; 
 int /*<<< orphan*/  DSI_IRQSTATUS ; 
 int DSI_IRQ_CHANNEL_MASK ; 
 int DSI_IRQ_COMPLEXIO_ERR ; 
 int DSI_IRQ_TE_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int,int*,int) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int*,int) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *arg)
{
	struct platform_device *dsidev;
	struct dsi_data *dsi;
	u32 irqstatus, vcstatus[4], ciostatus;
	int i;

	dsidev = (struct platform_device *) arg;
	dsi = FUNC3(dsidev);

	if (!dsi->is_enabled)
		return IRQ_NONE;

	FUNC9(&dsi->irq_lock);

	irqstatus = FUNC6(dsidev, DSI_IRQSTATUS);

	/* IRQ is not for us */
	if (!irqstatus) {
		FUNC10(&dsi->irq_lock);
		return IRQ_NONE;
	}

	FUNC7(dsidev, DSI_IRQSTATUS, irqstatus & ~DSI_IRQ_CHANNEL_MASK);
	/* flush posted write */
	FUNC6(dsidev, DSI_IRQSTATUS);

	for (i = 0; i < 4; ++i) {
		if ((irqstatus & (1 << i)) == 0) {
			vcstatus[i] = 0;
			continue;
		}

		vcstatus[i] = FUNC6(dsidev, FUNC0(i));

		FUNC7(dsidev, FUNC0(i), vcstatus[i]);
		/* flush posted write */
		FUNC6(dsidev, FUNC0(i));
	}

	if (irqstatus & DSI_IRQ_COMPLEXIO_ERR) {
		ciostatus = FUNC6(dsidev, DSI_COMPLEXIO_IRQ_STATUS);

		FUNC7(dsidev, DSI_COMPLEXIO_IRQ_STATUS, ciostatus);
		/* flush posted write */
		FUNC6(dsidev, DSI_COMPLEXIO_IRQ_STATUS);
	} else {
		ciostatus = 0;
	}

#ifdef DSI_CATCH_MISSING_TE
	if (irqstatus & DSI_IRQ_TE_TRIGGER)
		del_timer(&dsi->te_timer);
#endif

	/* make a copy and unlock, so that isrs can unregister
	 * themselves */
	FUNC8(&dsi->isr_tables_copy, &dsi->isr_tables,
		sizeof(dsi->isr_tables));

	FUNC10(&dsi->irq_lock);

	FUNC5(&dsi->isr_tables_copy, irqstatus, vcstatus, ciostatus);

	FUNC4(dsidev, irqstatus, vcstatus, ciostatus);

	FUNC2(dsidev, irqstatus, vcstatus, ciostatus);

	return IRQ_HANDLED;
}