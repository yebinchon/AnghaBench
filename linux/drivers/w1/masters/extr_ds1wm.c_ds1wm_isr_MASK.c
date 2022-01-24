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
typedef  int u8 ;
struct ds1wm_data {int int_en_reg_none; int slave_present; scalar_t__ reset_complete; scalar_t__ read_complete; void* read_byte; scalar_t__ write_complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS1WM_DATA ; 
 int /*<<< orphan*/  DS1WM_INT ; 
 int DS1WM_INTEN_EPD ; 
 int DS1WM_INTEN_ERBF ; 
 int DS1WM_INTEN_ETMT ; 
 int DS1WM_INTEN_NOT_IAS ; 
 int /*<<< orphan*/  DS1WM_INT_EN ; 
 int DS1WM_INT_PD ; 
 int DS1WM_INT_PDR ; 
 int DS1WM_INT_RBF ; 
 int DS1WM_INT_TSRE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* FUNC1 (struct ds1wm_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1wm_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int isr, void *data)
{
	struct ds1wm_data *ds1wm_data = data;
	u8 intr;
	u8 inten = FUNC1(ds1wm_data, DS1WM_INT_EN);
	/* if no bits are set in int enable register (except the IAS)
	than go no further, reading the regs below has side effects */
	if (!(inten & DS1WM_INTEN_NOT_IAS))
		return IRQ_NONE;

	FUNC2(ds1wm_data,
		DS1WM_INT_EN, ds1wm_data->int_en_reg_none);

	/* this read action clears the INTR and certain flags in ds1wm */
	intr = FUNC1(ds1wm_data, DS1WM_INT);

	ds1wm_data->slave_present = (intr & DS1WM_INT_PDR) ? 0 : 1;

	if ((intr & DS1WM_INT_TSRE) && ds1wm_data->write_complete) {
		inten &= ~DS1WM_INTEN_ETMT;
		FUNC0(ds1wm_data->write_complete);
	}
	if (intr & DS1WM_INT_RBF) {
		/* this read clears the RBF flag */
		ds1wm_data->read_byte = FUNC1(ds1wm_data,
		DS1WM_DATA);
		inten &= ~DS1WM_INTEN_ERBF;
		if (ds1wm_data->read_complete)
			FUNC0(ds1wm_data->read_complete);
	}
	if ((intr & DS1WM_INT_PD) && ds1wm_data->reset_complete) {
		inten &= ~DS1WM_INTEN_EPD;
		FUNC0(ds1wm_data->reset_complete);
	}

	FUNC2(ds1wm_data, DS1WM_INT_EN, inten);
	return IRQ_HANDLED;
}