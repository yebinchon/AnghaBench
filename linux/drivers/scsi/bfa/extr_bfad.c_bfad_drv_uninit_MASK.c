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
struct bfad_s {int /*<<< orphan*/  bfad_flags; int /*<<< orphan*/  bfa; int /*<<< orphan*/  hal_tmo; int /*<<< orphan*/  comp; int /*<<< orphan*/  bfad_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_DRV_INIT_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(struct bfad_s *bfad)
{
	unsigned long   flags;

	FUNC7(&bfad->bfad_lock, flags);
	FUNC6(&bfad->comp);
	FUNC1(&bfad->bfa);
	FUNC8(&bfad->bfad_lock, flags);
	FUNC9(&bfad->comp);

	FUNC5(&bfad->hal_tmo);
	FUNC2(&bfad->bfa);
	FUNC0(&bfad->bfa);
	FUNC4(bfad);
	FUNC3(bfad);

	bfad->bfad_flags &= ~BFAD_DRV_INIT_DONE;
}