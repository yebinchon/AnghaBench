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
struct asm9260_wdt_priv {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ HW_WDFEED ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 struct asm9260_wdt_priv* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct asm9260_wdt_priv *priv = FUNC1(wdd);

	FUNC0(0xaa, priv->iobase + HW_WDFEED);
	FUNC0(0x55, priv->iobase + HW_WDFEED);

	return 0;
}