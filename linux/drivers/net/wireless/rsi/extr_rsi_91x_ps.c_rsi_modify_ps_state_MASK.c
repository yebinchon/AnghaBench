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
struct rsi_hw {int ps_state; } ;
typedef  enum ps_state { ____Placeholder_ps_state } ps_state ;

/* Variables and functions */
 int /*<<< orphan*/  INFO_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct rsi_hw *adapter,
				       enum ps_state nstate)
{
	FUNC0(INFO_ZONE, "PS state changed %s => %s\n",
		FUNC1(adapter->ps_state),
		FUNC1(nstate));

	adapter->ps_state = nstate;
}