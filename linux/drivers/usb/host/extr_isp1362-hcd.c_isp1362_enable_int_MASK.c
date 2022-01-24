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
struct isp1362_hcd {int irqenb; scalar_t__ irq_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCuPINT ; 
 int /*<<< orphan*/  HCuPINTENB ; 
 int /*<<< orphan*/  FUNC0 (struct isp1362_hcd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct isp1362_hcd *isp1362_hcd, u16 mask)
{
	if ((isp1362_hcd->irqenb | mask) == isp1362_hcd->irqenb)
		return;
	if (mask & ~isp1362_hcd->irqenb)
		FUNC0(isp1362_hcd, HCuPINT, mask & ~isp1362_hcd->irqenb);
	isp1362_hcd->irqenb |= mask;
	if (isp1362_hcd->irq_active)
		return;
	FUNC0(isp1362_hcd, HCuPINTENB, isp1362_hcd->irqenb);
}