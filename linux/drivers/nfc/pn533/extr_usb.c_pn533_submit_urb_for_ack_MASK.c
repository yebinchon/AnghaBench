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
struct pn533_usb_phy {TYPE_1__* in_urb; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  pn533_recv_ack ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pn533_usb_phy *phy, gfp_t flags)
{
	phy->in_urb->complete = pn533_recv_ack;

	return FUNC0(phy->in_urb, flags);
}