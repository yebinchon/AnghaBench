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
struct uwb_beca_e {int /*<<< orphan*/  rssi_stats; int /*<<< orphan*/  lqe_stats; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct uwb_beca_e *bce)
{
	FUNC1(&bce->mutex);
	FUNC0(&bce->refcnt);
	FUNC2(&bce->lqe_stats);
	FUNC2(&bce->rssi_stats);
}