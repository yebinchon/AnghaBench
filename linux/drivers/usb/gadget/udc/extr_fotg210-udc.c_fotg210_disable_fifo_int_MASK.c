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
struct fotg210_ep {TYPE_1__* fotg210; scalar_t__ epnum; scalar_t__ dir_in; } ;
struct TYPE_2__ {scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FOTG210_DMISGR1 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct fotg210_ep *ep)
{
	u32 value = FUNC2(ep->fotg210->reg + FOTG210_DMISGR1);

	if (ep->dir_in)
		value |= FUNC0(ep->epnum - 1);
	else
		value |= FUNC1(ep->epnum - 1);
	FUNC3(value, ep->fotg210->reg + FOTG210_DMISGR1);
}