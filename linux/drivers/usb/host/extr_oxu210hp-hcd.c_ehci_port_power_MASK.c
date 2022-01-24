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
struct oxu_hcd {int /*<<< orphan*/  hcs_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  ClearPortFeature ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetPortFeature ; 
 int /*<<< orphan*/  USB_PORT_FEAT_POWER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct oxu_hcd*) ; 

__attribute__((used)) static void FUNC6(struct oxu_hcd *oxu, int is_on)
{
	unsigned port;

	if (!FUNC1(oxu->hcs_params))
		return;

	FUNC3(oxu, "...power%s ports...\n", is_on ? "up" : "down");
	for (port = FUNC0(oxu->hcs_params); port > 0; )
		(void) FUNC4(FUNC5(oxu),
				is_on ? SetPortFeature : ClearPortFeature,
				USB_PORT_FEAT_POWER,
				port--, NULL, 0);
	FUNC2(20);
}