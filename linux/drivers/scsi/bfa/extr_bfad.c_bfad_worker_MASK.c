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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/ * bfad_tsk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_E_INIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(void *ptr)
{
	struct bfad_s *bfad = ptr;
	unsigned long flags;

	if (FUNC1())
		return 0;

	/* Send event BFAD_E_INIT_SUCCESS */
	FUNC0(bfad, BFAD_E_INIT_SUCCESS);

	FUNC2(&bfad->bfad_lock, flags);
	bfad->bfad_tsk = NULL;
	FUNC3(&bfad->bfad_lock, flags);

	return 0;
}