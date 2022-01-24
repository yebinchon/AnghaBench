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
struct max8903_pdata {int /*<<< orphan*/  flt; } ;
struct max8903_data {int fault; int /*<<< orphan*/  dev; struct max8903_pdata* pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *_data)
{
	struct max8903_data *data = _data;
	struct max8903_pdata *pdata = data->pdata;
	bool fault;

	fault = FUNC1(pdata->flt) ? false : true;

	if (fault == data->fault)
		return IRQ_HANDLED;

	data->fault = fault;

	if (fault)
		FUNC0(data->dev, "Charger suffers a fault and stops.\n");
	else
		FUNC0(data->dev, "Charger recovered from a fault.\n");

	return IRQ_HANDLED;
}