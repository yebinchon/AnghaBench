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
struct atmel_lcdfb_pdata {int default_dmacon; int guard_time; } ;
struct atmel_lcdfb_info {struct atmel_lcdfb_pdata pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_LCDC_DMACON ; 
 int ATMEL_LCDC_GUARDT_OFFSET ; 
 int ATMEL_LCDC_PWR ; 
 int /*<<< orphan*/  ATMEL_LCDC_PWRCON ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_lcdfb_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct atmel_lcdfb_info *sinfo)
{
	struct atmel_lcdfb_pdata *pdata = &sinfo->pdata;

	FUNC0(sinfo, ATMEL_LCDC_DMACON, pdata->default_dmacon);
	FUNC0(sinfo, ATMEL_LCDC_PWRCON,
		(pdata->guard_time << ATMEL_LCDC_GUARDT_OFFSET)
		| ATMEL_LCDC_PWR);
}