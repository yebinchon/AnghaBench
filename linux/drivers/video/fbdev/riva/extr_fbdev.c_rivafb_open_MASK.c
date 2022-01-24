#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vgastate {int dummy; } ;
struct TYPE_4__ {scalar_t__ Architecture; int /*<<< orphan*/  (* LockUnlock ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int flags; } ;
struct riva_par {int /*<<< orphan*/  open_lock; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  initial_state; TYPE_1__ riva; TYPE_2__ state; } ;
struct fb_info {struct riva_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct riva_par*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ NV_ARCH_03 ; 
 int VGA_SAVE_CMAP ; 
 int VGA_SAVE_FONTS ; 
 int VGA_SAVE_MODE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct riva_par*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct fb_info *info, int user)
{
	struct riva_par *par = info->par;

	FUNC1();
	FUNC4(&par->open_lock);
	if (!par->ref_count) {
#ifdef CONFIG_X86
		memset(&par->state, 0, sizeof(struct vgastate));
		par->state.flags = VGA_SAVE_MODE  | VGA_SAVE_FONTS;
		/* save the DAC for Riva128 */
		if (par->riva.Architecture == NV_ARCH_03)
			par->state.flags |= VGA_SAVE_CMAP;
		save_vga(&par->state);
#endif
		/* vgaHWunlock() + riva unlock (0x7F) */
		FUNC0(par, 0x11, 0xFF);
		par->riva.LockUnlock(&par->riva, 0);
	
		FUNC6(par, &par->initial_state);
	}
	par->ref_count++;
	FUNC5(&par->open_lock);
	FUNC2();
	return 0;
}