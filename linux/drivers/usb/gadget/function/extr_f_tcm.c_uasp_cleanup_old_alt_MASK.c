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
struct f_uas {int flags; int /*<<< orphan*/ * stream; int /*<<< orphan*/  ep_cmd; int /*<<< orphan*/  ep_status; int /*<<< orphan*/  ep_out; int /*<<< orphan*/  ep_in; } ;

/* Variables and functions */
 int UASP_SS_EP_COMP_NUM_STREAMS ; 
 int USBG_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct f_uas*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct f_uas*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct f_uas *fu)
{
	int i;

	if (!(fu->flags & USBG_ENABLED))
		return;

	FUNC2(fu->ep_in);
	FUNC2(fu->ep_out);
	FUNC2(fu->ep_status);
	FUNC2(fu->ep_cmd);

	for (i = 0; i < UASP_SS_EP_COMP_NUM_STREAMS; i++)
		FUNC0(fu, &fu->stream[i]);
	FUNC1(fu);
}