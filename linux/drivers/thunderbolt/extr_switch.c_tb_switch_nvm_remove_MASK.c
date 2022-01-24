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
struct tb_switch_nvm {int /*<<< orphan*/  buf; int /*<<< orphan*/  id; scalar_t__ active; scalar_t__ non_active; int /*<<< orphan*/  authenticating; } ;
struct tb_switch {struct tb_switch_nvm* nvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_switch_nvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_switch*) ; 
 int /*<<< orphan*/  nvm_ida ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tb_switch *sw)
{
	struct tb_switch_nvm *nvm;

	nvm = sw->nvm;
	sw->nvm = NULL;

	if (!nvm)
		return;

	/* Remove authentication status in case the switch is unplugged */
	if (!nvm->authenticating)
		FUNC2(sw);

	if (nvm->non_active)
		FUNC3(nvm->non_active);
	if (nvm->active)
		FUNC3(nvm->active);
	FUNC0(&nvm_ida, nvm->id);
	FUNC4(nvm->buf);
	FUNC1(nvm);
}