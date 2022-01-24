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
struct musb {int /*<<< orphan*/  ctrl_base; int /*<<< orphan*/  controller; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; } ;
struct dsps_glue {TYPE_1__ regset; struct dentry* dbgfs_root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*,TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsps_musb_regs ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct musb *musb, struct dsps_glue *glue)
{
	struct dentry *root;
	char buf[128];

	FUNC4(buf, "%s.dsps", FUNC3(musb->controller));
	root = FUNC1(buf, NULL);
	glue->dbgfs_root = root;

	glue->regset.regs = dsps_musb_regs;
	glue->regset.nregs = FUNC0(dsps_musb_regs);
	glue->regset.base = musb->ctrl_base;

	FUNC2("regdump", S_IRUGO, root, &glue->regset);
	return 0;
}