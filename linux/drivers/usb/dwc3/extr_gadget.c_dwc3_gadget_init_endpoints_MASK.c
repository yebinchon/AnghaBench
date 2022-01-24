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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ep_list; } ;
struct dwc3 {TYPE_1__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dwc3*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct dwc3 *dwc, u8 total)
{
	u8				epnum;

	FUNC0(&dwc->gadget.ep_list);

	for (epnum = 0; epnum < total; epnum++) {
		int			ret;

		ret = FUNC1(dwc, epnum);
		if (ret)
			return ret;
	}

	return 0;
}