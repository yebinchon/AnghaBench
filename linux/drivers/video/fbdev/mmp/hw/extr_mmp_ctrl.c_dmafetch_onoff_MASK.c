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
typedef  int /*<<< orphan*/  u32 ;
struct mmp_path {int /*<<< orphan*/  id; } ;
struct mmp_overlay {int /*<<< orphan*/  access_ok; struct mmp_path* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CFG_DMA_ENA_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CFG_GRA_ENA_MASK ; 
 scalar_t__ FUNC2 (struct mmp_path*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct mmp_overlay*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct mmp_overlay *overlay, int on)
{
	u32 mask = FUNC6(overlay) ? CFG_DMA_ENA_MASK :
		   CFG_GRA_ENA_MASK;
	u32 enable = FUNC6(overlay) ? FUNC0(1) : FUNC1(1);
	u32 tmp;
	struct mmp_path *path = overlay->path;

	FUNC4(&overlay->access_ok);
	tmp = FUNC7(FUNC2(path) + FUNC3(0, path->id));
	tmp &= ~mask;
	tmp |= (on ? enable : 0);
	FUNC8(tmp, FUNC2(path) + FUNC3(0, path->id));
	FUNC5(&overlay->access_ok);
}