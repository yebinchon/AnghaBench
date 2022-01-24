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
typedef  int u8 ;
struct watchdog_device {unsigned int timeout; } ;
struct tqmx86_wdt {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ TQMX86_WDCFG ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 unsigned int FUNC2 (unsigned int) ; 
 struct tqmx86_wdt* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd, unsigned int t)
{
	struct tqmx86_wdt *priv = FUNC3(wdd);
	u8 val;

	t = FUNC2(t);
	val = FUNC0(t) | 0x90;
	val += 3; /* values 0,1,2 correspond to 0.125,0.25,0.5s timeouts */
	FUNC1(val, priv->io_base + TQMX86_WDCFG);

	wdd->timeout = t;

	return 0;
}