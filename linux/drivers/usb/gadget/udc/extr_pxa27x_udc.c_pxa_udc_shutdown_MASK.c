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
struct pxa_udc {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCR ; 
 int UDCCR_UDE ; 
 struct pxa_udc* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_udc*) ; 
 int FUNC2 (struct pxa_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct platform_device *_dev)
{
	struct pxa_udc *udc = FUNC0(_dev);

	if (FUNC2(udc, UDCCR) & UDCCR_UDE)
		FUNC1(udc);
}