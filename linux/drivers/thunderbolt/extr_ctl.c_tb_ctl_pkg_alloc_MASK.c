#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tb_ctl {int /*<<< orphan*/  frame_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer_phy; } ;
struct ctl_pkg {int /*<<< orphan*/  buffer; TYPE_1__ frame; struct tb_ctl* ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_pkg*) ; 
 struct ctl_pkg* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ctl_pkg *FUNC3(struct tb_ctl *ctl)
{
	struct ctl_pkg *pkg = FUNC2(sizeof(*pkg), GFP_KERNEL);
	if (!pkg)
		return NULL;
	pkg->ctl = ctl;
	pkg->buffer = FUNC0(ctl->frame_pool, GFP_KERNEL,
				     &pkg->frame.buffer_phy);
	if (!pkg->buffer) {
		FUNC1(pkg);
		return NULL;
	}
	return pkg;
}