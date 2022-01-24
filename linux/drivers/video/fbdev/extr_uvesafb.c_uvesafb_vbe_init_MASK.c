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
struct uvesafb_par {scalar_t__ ypan; scalar_t__ pmi_setpal; int /*<<< orphan*/  nocrtc; } ;
struct uvesafb_ktask {int dummy; } ;
struct fb_info {int /*<<< orphan*/  modelist; struct uvesafb_par* par; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int _PAGE_NX ; 
 int __supported_pte_mask ; 
 int /*<<< orphan*/  nocrtc ; 
 scalar_t__ pmi_setpal ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct uvesafb_ktask*) ; 
 struct uvesafb_ktask* FUNC3 () ; 
 int FUNC4 (struct uvesafb_ktask*,struct uvesafb_par*) ; 
 int FUNC5 (struct uvesafb_ktask*,struct uvesafb_par*) ; 
 int /*<<< orphan*/  FUNC6 (struct uvesafb_ktask*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct uvesafb_ktask*,struct uvesafb_par*) ; 
 int /*<<< orphan*/  FUNC8 (struct uvesafb_ktask*,struct uvesafb_par*) ; 
 scalar_t__ ypan ; 

__attribute__((used)) static int FUNC9(struct fb_info *info)
{
	struct uvesafb_ktask *task = NULL;
	struct uvesafb_par *par = info->par;
	int err;

	task = FUNC3();
	if (!task)
		return -ENOMEM;

	err = FUNC4(task, par);
	if (err)
		goto out;

	err = FUNC5(task, par);
	if (err)
		goto out;

	par->nocrtc = nocrtc;
#ifdef CONFIG_X86_32
	par->pmi_setpal = pmi_setpal;
	par->ypan = ypan;

	if (par->pmi_setpal || par->ypan) {
		if (__supported_pte_mask & _PAGE_NX) {
			par->pmi_setpal = par->ypan = 0;
			pr_warn("NX protection is active, better not use the PMI\n");
		} else {
			uvesafb_vbe_getpmi(task, par);
		}
	}
#else
	/* The protected mode interface is not available on non-x86. */
	par->pmi_setpal = par->ypan = 0;
#endif

	FUNC0(&info->modelist);
	FUNC6(task, info);
	FUNC8(task, par);

out:	FUNC2(task);
	return err;
}