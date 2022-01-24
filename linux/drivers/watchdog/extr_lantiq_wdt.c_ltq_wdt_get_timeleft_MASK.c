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
typedef  int u64 ;
struct watchdog_device {int dummy; } ;
struct ltq_wdt_priv {int /*<<< orphan*/  clk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTQ_WDT_SR ; 
 int LTQ_WDT_SR_VALUE_MASK ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct ltq_wdt_priv* FUNC1 (struct watchdog_device*) ; 
 int FUNC2 (struct ltq_wdt_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct watchdog_device *wdt)
{
	struct ltq_wdt_priv *priv = FUNC1(wdt);
	u64 timeout;

	timeout = FUNC2(priv, LTQ_WDT_SR) & LTQ_WDT_SR_VALUE_MASK;
	return FUNC0(timeout, priv->clk_rate);
}