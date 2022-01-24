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
struct snic {int /*<<< orphan*/  state; int /*<<< orphan*/  shost; } ;
typedef  enum snic_state { ____Placeholder_snic_state } snic_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct snic*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(struct snic *snic, enum snic_state state)
{
	FUNC0(snic->shost, "snic state change from %s to %s\n",
		       FUNC3(FUNC2(snic)),
		       FUNC3(state));

	FUNC1(&snic->state, state);
}