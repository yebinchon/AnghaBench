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
typedef  int u32 ;
struct pxa_udc {int dummy; } ;
struct pxa_ep {struct pxa_udc* dev; } ;

/* Variables and functions */
 int FUNC0 (struct pxa_ep*) ; 
 int /*<<< orphan*/  UDCICR0 ; 
 int /*<<< orphan*/  UDCICR1 ; 
 int FUNC1 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct pxa_ep *ep)
{
	struct pxa_udc *udc = ep->dev;
	int index = FUNC0(ep);
	u32 udcicr0 = FUNC1(udc, UDCICR0);
	u32 udcicr1 = FUNC1(udc, UDCICR1);

	if (index < 16)
		FUNC2(udc, UDCICR0, udcicr0 | (3 << (index * 2)));
	else
		FUNC2(udc, UDCICR1, udcicr1 | (3 << ((index - 16) * 2)));
}