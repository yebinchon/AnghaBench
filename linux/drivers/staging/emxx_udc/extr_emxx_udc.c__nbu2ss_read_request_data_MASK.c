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
typedef  int /*<<< orphan*/  u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  SETUP_DATA1; int /*<<< orphan*/  SETUP_DATA0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct nbu2ss_udc *udc, u32 *pdata)
{
	*pdata = FUNC0(&udc->p_regs->SETUP_DATA0);
	pdata++;
	*pdata = FUNC0(&udc->p_regs->SETUP_DATA1);
}