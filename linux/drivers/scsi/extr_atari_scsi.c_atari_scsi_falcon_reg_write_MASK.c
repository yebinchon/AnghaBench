#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_short ;
typedef  scalar_t__ u8 ;
struct TYPE_2__ {void* fdc_acces_seccount; void* dma_mode_status; } ;

/* Variables and functions */
 TYPE_1__ dma_wd ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned int reg, u8 value)
{
	unsigned long flags;

	reg += 0x88;
	FUNC1(flags);
	dma_wd.dma_mode_status = (u_short)reg;
	dma_wd.fdc_acces_seccount = (u_short)value;
	FUNC0(flags);
}