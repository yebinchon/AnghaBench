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
struct ab8500_fg {size_t discharge_state; int /*<<< orphan*/  dev; } ;
typedef  enum ab8500_fg_discharge_state { ____Placeholder_ab8500_fg_discharge_state } ab8500_fg_discharge_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * discharge_state ; 

__attribute__((used)) static void FUNC1(struct ab8500_fg *di,
	enum ab8500_fg_discharge_state new_state)
{
	FUNC0(di->dev, "Discharge state from %d [%s] to %d [%s]\n",
		di->discharge_state,
		discharge_state[di->discharge_state],
		new_state,
		discharge_state[new_state]);

	di->discharge_state = new_state;
}