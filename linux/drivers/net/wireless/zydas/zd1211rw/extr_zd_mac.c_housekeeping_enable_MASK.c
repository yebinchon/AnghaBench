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
struct TYPE_2__ {int /*<<< orphan*/  link_led_work; } ;
struct zd_mac {TYPE_1__ housekeeping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_mac*) ; 
 int /*<<< orphan*/  zd_workqueue ; 

__attribute__((used)) static void FUNC3(struct zd_mac *mac)
{
	FUNC0(FUNC2(mac), "\n");
	FUNC1(zd_workqueue, &mac->housekeeping.link_led_work,
			   0);
}