#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ep_list; } ;
struct s3c_hsudc {int /*<<< orphan*/ * ep; TYPE_2__* pd; TYPE_1__ gadget; int /*<<< orphan*/  ep0state; } ;
struct TYPE_4__ {int epnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct s3c_hsudc*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct s3c_hsudc *hsudc)
{
	int epnum;

	hsudc->ep0state = WAIT_FOR_SETUP;
	FUNC0(&hsudc->gadget.ep_list);
	for (epnum = 0; epnum < hsudc->pd->epnum; epnum++)
		FUNC1(hsudc, &hsudc->ep[epnum], epnum);
}