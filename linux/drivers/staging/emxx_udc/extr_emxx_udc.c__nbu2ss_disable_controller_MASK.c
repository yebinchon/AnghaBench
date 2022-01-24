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
struct nbu2ss_udc {int udc_enabled; TYPE_1__* p_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  EPCTR; } ;

/* Variables and functions */
 int DIRPD ; 
 int EPC_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nbu2ss_udc*) ; 

__attribute__((used)) static void FUNC2(struct nbu2ss_udc *udc)
{
	if (udc->udc_enabled) {
		udc->udc_enabled = false;
		FUNC1(udc);
		FUNC0(&udc->p_regs->EPCTR, (DIRPD | EPC_RST));
	}
}