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
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  EP0_INT_ENA; int /*<<< orphan*/  EP0_CONTROL; } ;

/* Variables and functions */
 int EP0_AUTO ; 
 int EP0_BCLR ; 
 int /*<<< orphan*/  EP0_INT_EN_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nbu2ss_udc *udc)
{
	FUNC0(&udc->p_regs->EP0_CONTROL, (EP0_AUTO | EP0_BCLR));
	FUNC1(&udc->p_regs->EP0_INT_ENA, EP0_INT_EN_BIT);
}