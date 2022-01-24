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
struct mtu3_request {int dummy; } ;
struct mtu3_ep {scalar_t__ is_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtu3_ep*,struct mtu3_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtu3_ep*,struct mtu3_request*) ; 

void FUNC2(struct mtu3_ep *mep, struct mtu3_request *mreq)
{

	if (mep->is_in)
		FUNC1(mep, mreq);
	else
		FUNC0(mep, mreq);
}