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
struct bfad_s {int /*<<< orphan*/  comp; int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfad_flags; int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_E_EXIT_COMP ; 
 int /*<<< orphan*/  BFAD_HAL_START_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct bfad_s *bfad)
{
	unsigned long	flags;

	FUNC3(&bfad->bfad_lock, flags);
	FUNC2(&bfad->comp);
	FUNC0(&bfad->bfa);
	bfad->bfad_flags &= ~BFAD_HAL_START_DONE;
	FUNC4(&bfad->bfad_lock, flags);
	FUNC5(&bfad->comp);

	FUNC1(bfad, BFAD_E_EXIT_COMP);
}