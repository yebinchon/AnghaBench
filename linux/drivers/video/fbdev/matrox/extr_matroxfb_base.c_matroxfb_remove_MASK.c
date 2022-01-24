#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  vaddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  base; TYPE_1__ vbase; } ;
struct TYPE_6__ {int /*<<< orphan*/  vaddr; } ;
struct TYPE_7__ {int len_maximum; int /*<<< orphan*/  base; TYPE_2__ vbase; } ;
struct matrox_fb_info {int dead; TYPE_4__ mmio; TYPE_3__ video; int /*<<< orphan*/  wc_cookie; int /*<<< orphan*/  fbcon; scalar_t__ usecount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct matrox_fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct matrox_fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct matrox_fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct matrox_fb_info *minfo, int dummy)
{
	/* Currently we are holding big kernel lock on all dead & usecount updates.
	 * Destroy everything after all users release it. Especially do not unregister
	 * framebuffer and iounmap memory, neither fbmem nor fbcon-cfb* does not check
	 * for device unplugged when in use.
	 * In future we should point mmio.vbase & video.vbase somewhere where we can
	 * write data without causing too much damage...
	 */

	minfo->dead = 1;
	if (minfo->usecount) {
		/* destroy it later */
		return;
	}
	FUNC4(minfo);
	FUNC6(&minfo->fbcon);
	FUNC3(minfo);
	FUNC0(minfo->wc_cookie);
	FUNC1(minfo->mmio.vbase.vaddr);
	FUNC1(minfo->video.vbase.vaddr);
	FUNC5(minfo->video.base, minfo->video.len_maximum);
	FUNC5(minfo->mmio.base, 16384);
	FUNC2(minfo);
}