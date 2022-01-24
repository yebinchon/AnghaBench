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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	if (FUNC0(CONFIG_PPC)) {
		/* To save cycles, we cache the result for global "Mac" setting */
		static int quirk_state = -1;

		/* PA-SEMI sdc DT bug */
		if (FUNC1(np, "1682m-sdc"))
			return true;

		/* Make quirk cached */
		if (quirk_state < 0)
			quirk_state =
				FUNC2("Power Macintosh") ||
				FUNC2("MacRISC");
		return quirk_state;
	}
	return false;
}