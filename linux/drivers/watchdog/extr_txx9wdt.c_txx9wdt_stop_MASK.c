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
struct watchdog_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcr; int /*<<< orphan*/  wtmr; } ;

/* Variables and functions */
 int TXx9_TMTCR_TCE ; 
 int TXx9_TMWTMR_WDIS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txx9_lock ; 
 TYPE_1__* txx9wdt_reg ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdt_dev)
{
	FUNC2(&txx9_lock);
	FUNC1(TXx9_TMWTMR_WDIS, &txx9wdt_reg->wtmr);
	FUNC1(FUNC0(&txx9wdt_reg->tcr) & ~TXx9_TMTCR_TCE,
		     &txx9wdt_reg->tcr);
	FUNC3(&txx9_lock);
	return 0;
}