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
typedef  int u16 ;
struct cpcap_coulomb_counter_data {int sample; int accumulator; int offset; } ;
struct cpcap_battery_ddata {scalar_t__ vendor; int /*<<< orphan*/  reg; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  CPCAP_REG_CCS1 ; 
 scalar_t__ CPCAP_VENDOR_TI ; 
 int FUNC1 (struct cpcap_battery_ddata*,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int) ; 

__attribute__((used)) static int
FUNC4(struct cpcap_battery_ddata *ddata,
			       struct cpcap_coulomb_counter_data *ccd)
{
	u16 buf[7];	/* CPCAP_REG_CC1 to CCI */
	int error;

	ccd->sample = 0;
	ccd->accumulator = 0;
	ccd->offset = 0;

	/* Read coulomb counter register range */
	error = FUNC2(ddata->reg, CPCAP_REG_CCS1,
				 buf, FUNC0(buf));
	if (error)
		return 0;

	/* Sample value CPCAP_REG_CCS1 & 2 */
	ccd->sample = (buf[1] & 0x0fff) << 16;
	ccd->sample |= buf[0];
	if (ddata->vendor == CPCAP_VENDOR_TI)
		ccd->sample = FUNC3(24, ccd->sample);

	/* Accumulator value CPCAP_REG_CCA1 & 2 */
	ccd->accumulator = ((s16)buf[3]) << 16;
	ccd->accumulator |= buf[2];

	/*
	 * Coulomb counter calibration offset is CPCAP_REG_CCM,
	 * REG_CCO seems unused
	 */
	ccd->offset = buf[4];
	ccd->offset = FUNC3(ccd->offset, 9);

	return FUNC1(ddata,
				       ccd->sample,
				       ccd->accumulator,
				       ccd->offset);
}