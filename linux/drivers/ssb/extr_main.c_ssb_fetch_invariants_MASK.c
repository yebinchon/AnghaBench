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
struct ssb_init_invariants {int /*<<< orphan*/  has_cardbus_slot; int /*<<< orphan*/  sprom; int /*<<< orphan*/  boardinfo; } ;
struct ssb_bus {int /*<<< orphan*/  has_cardbus_slot; int /*<<< orphan*/  sprom; int /*<<< orphan*/  boardinfo; } ;
typedef  int (* ssb_invariants_func_t ) (struct ssb_bus*,struct ssb_init_invariants*) ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_init_invariants*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ssb_bus *bus,
				ssb_invariants_func_t get_invariants)
{
	struct ssb_init_invariants iv;
	int err;

	FUNC1(&iv, 0, sizeof(iv));
	err = get_invariants(bus, &iv);
	if (err)
		goto out;
	FUNC0(&bus->boardinfo, &iv.boardinfo, sizeof(iv.boardinfo));
	FUNC0(&bus->sprom, &iv.sprom, sizeof(iv.sprom));
	bus->has_cardbus_slot = iv.has_cardbus_slot;
out:
	return err;
}