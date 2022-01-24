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
struct usba_udc {int /*<<< orphan*/  pmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_CKGR_UCKR ; 
 int /*<<< orphan*/  AT91_PMC_BIASEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct usba_udc *udc, int is_on)
{
	FUNC0(udc->pmc, AT91_CKGR_UCKR, AT91_PMC_BIASEN,
			   is_on ? AT91_PMC_BIASEN : 0);
}