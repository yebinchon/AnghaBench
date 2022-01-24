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
struct pch_udc_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDC_EPCTL_ADDR ; 
 int /*<<< orphan*/  UDC_EPCTL_CNAK ; 
 int /*<<< orphan*/  UDC_EPCTL_S ; 
 int /*<<< orphan*/  FUNC0 (struct pch_udc_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_udc_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct pch_udc_ep *ep)
{
	/* Clear the stall */
	FUNC0(ep, UDC_EPCTL_ADDR, UDC_EPCTL_S);
	/* Clear NAK by writing CNAK */
	FUNC1(ep, UDC_EPCTL_ADDR, UDC_EPCTL_CNAK);
}