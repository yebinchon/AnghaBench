#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vsoc_region_data {int /*<<< orphan*/  interrupt_wait_queue; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {TYPE_2__* dev; struct vsoc_region_data* regions_data; TYPE_1__* layout; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int region_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct vsoc_region_data*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_3__ vsoc_dev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *region_data_v)
{
	struct vsoc_region_data *region_data =
	    (struct vsoc_region_data *)region_data_v;
	int reg_num = region_data - vsoc_dev.regions_data;

	if (FUNC1(!region_data))
		return IRQ_NONE;

	if (FUNC1(reg_num < 0 ||
		     reg_num >= vsoc_dev.layout->region_count)) {
		FUNC0(&vsoc_dev.dev->dev,
			"invalid irq @%p reg_num=0x%04x\n",
			region_data, reg_num);
		return IRQ_NONE;
	}
	if (FUNC1(vsoc_dev.regions_data + reg_num != region_data)) {
		FUNC0(&vsoc_dev.dev->dev,
			"irq not aligned @%p reg_num=0x%04x\n",
			region_data, reg_num);
		return IRQ_NONE;
	}
	FUNC2(&region_data->interrupt_wait_queue);
	return IRQ_HANDLED;
}