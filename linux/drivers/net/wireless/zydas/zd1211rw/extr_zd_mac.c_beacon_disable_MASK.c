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
struct TYPE_2__ {int /*<<< orphan*/  watchdog_work; } ;
struct zd_mac {TYPE_1__ beacon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_mac*) ; 

__attribute__((used)) static void FUNC4(struct zd_mac *mac)
{
	FUNC1(FUNC2(mac), "\n");
	FUNC0(&mac->beacon.watchdog_work);

	FUNC3(mac);
}