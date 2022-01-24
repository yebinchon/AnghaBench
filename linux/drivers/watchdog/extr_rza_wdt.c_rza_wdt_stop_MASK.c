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
struct watchdog_device {int dummy; } ;
struct rza_wdt {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ WTCSR ; 
 int WTCSR_MAGIC ; 
 struct rza_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdev)
{
	struct rza_wdt *priv = FUNC0(wdev);

	FUNC1(WTCSR_MAGIC | 0, priv->base + WTCSR);

	return 0;
}