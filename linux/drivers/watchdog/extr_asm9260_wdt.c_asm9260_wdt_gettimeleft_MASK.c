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
typedef  unsigned int u32 ;
struct watchdog_device {int dummy; } ;
struct asm9260_wdt_priv {unsigned int wdt_freq; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ HW_WDTV ; 
 unsigned int FUNC0 (scalar_t__) ; 
 struct asm9260_wdt_priv* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC2(struct watchdog_device *wdd)
{
	struct asm9260_wdt_priv *priv = FUNC1(wdd);
	u32 counter;

	counter = FUNC0(priv->iobase + HW_WDTV);

	return counter / priv->wdt_freq;
}