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
struct atmel_lcdfb_pdata {int guard_time; } ;
struct atmel_lcdfb_info {struct atmel_lcdfb_pdata pdata; } ;

/* Variables and functions */
 int ATMEL_LCDC_BUSY ; 
 int /*<<< orphan*/  ATMEL_LCDC_DMACON ; 
 int ATMEL_LCDC_GUARDT_OFFSET ; 
 int /*<<< orphan*/  ATMEL_LCDC_PWRCON ; 
 int FUNC0 (struct atmel_lcdfb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_lcdfb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct atmel_lcdfb_info *sinfo)
{
	struct atmel_lcdfb_pdata *pdata = &sinfo->pdata;

	/* Turn off the LCD controller and the DMA controller */
	FUNC1(sinfo, ATMEL_LCDC_PWRCON,
			pdata->guard_time << ATMEL_LCDC_GUARDT_OFFSET);

	/* Wait for the LCDC core to become idle */
	while (FUNC0(sinfo, ATMEL_LCDC_PWRCON) & ATMEL_LCDC_BUSY)
		FUNC2(10);

	FUNC1(sinfo, ATMEL_LCDC_DMACON, 0);
}