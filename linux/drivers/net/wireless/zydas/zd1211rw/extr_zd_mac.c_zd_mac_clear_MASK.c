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
struct zd_mac {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_mac*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zd_workqueue ; 

void FUNC3(struct zd_mac *mac)
{
	FUNC1(zd_workqueue);
	FUNC2(&mac->chip);
	FUNC0(mac, sizeof(struct zd_mac));
}