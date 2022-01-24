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
struct mei_wdt {scalar_t__ state; } ;
struct mei_cl_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MEI_WDT_NOT_REQUIRED ; 
 struct mei_wdt* FUNC0 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_wdt*) ; 

__attribute__((used)) static void FUNC2(struct mei_cl_device *cldev)
{
	struct mei_wdt *wdt = FUNC0(cldev);

	if (wdt->state != MEI_WDT_NOT_REQUIRED)
		return;

	FUNC1(wdt);
}