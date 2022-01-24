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
struct fusb300_ep_info {int /*<<< orphan*/  epnum; scalar_t__ bw_num; scalar_t__ interval; } ;
struct fusb300 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fusb300*,struct fusb300_ep_info) ; 
 int /*<<< orphan*/  FUNC1 (struct fusb300*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fusb300*,struct fusb300_ep_info) ; 
 int /*<<< orphan*/  FUNC3 (struct fusb300*,struct fusb300_ep_info) ; 
 int /*<<< orphan*/  FUNC4 (struct fusb300*,struct fusb300_ep_info) ; 
 int /*<<< orphan*/  FUNC5 (struct fusb300*,struct fusb300_ep_info) ; 

__attribute__((used)) static void FUNC6(struct fusb300 *fusb300,
		      struct fusb300_ep_info info)
{
	FUNC4(fusb300, info);
	FUNC2(fusb300, info);
	FUNC3(fusb300, info);

	if (info.interval)
		FUNC5(fusb300, info);

	if (info.bw_num)
		FUNC0(fusb300, info);

	FUNC1(fusb300, info.epnum);
}