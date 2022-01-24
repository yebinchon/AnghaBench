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
struct atmel_lcdfb_info {int dummy; } ;

/* Variables and functions */
 int ATMEL_LCDC_DMABUSY ; 
 int /*<<< orphan*/  ATMEL_LCDC_DMACON ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_lcdfb_info*) ; 
 int FUNC1 (struct atmel_lcdfb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct atmel_lcdfb_info *sinfo)
{
	FUNC0(sinfo);

	/* Wait for DMA engine to become idle... */
	while (FUNC1(sinfo, ATMEL_LCDC_DMACON) & ATMEL_LCDC_DMABUSY)
		FUNC2(10);
}