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
struct wilc {int /*<<< orphan*/  hif_cs; } ;
typedef  enum bus_acquire { ____Placeholder_bus_acquire } bus_acquire ;

/* Variables and functions */
 int WILC_BUS_ACQUIRE_AND_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct wilc *wilc, enum bus_acquire acquire)
{
	FUNC1(&wilc->hif_cs);
	if (acquire == WILC_BUS_ACQUIRE_AND_WAKEUP)
		FUNC0(wilc);
}