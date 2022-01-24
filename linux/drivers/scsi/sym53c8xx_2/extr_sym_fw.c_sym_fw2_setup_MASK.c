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
struct sym_hcb {scalar_t__ scripta0; } ;
struct sym_fw2a_scr {int /*<<< orphan*/  data_out; int /*<<< orphan*/  data_in; } ;
struct sym_fw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,struct sym_fw*) ; 

__attribute__((used)) static void 
FUNC2(struct sym_hcb *np, struct sym_fw *fw)
{
	struct sym_fw2a_scr *scripta0;

	scripta0 = (struct sym_fw2a_scr *) np->scripta0;

	/*
	 *  Fill variable parts in scripts.
	 */
	FUNC0(scripta0->data_in, scripta0->data_out);

	/*
	 *  Setup bus addresses used from the C code..
	 */
	FUNC1(np, fw);
}