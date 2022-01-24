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
struct sirfsoc_pmx {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 struct sirfsoc_pmx* FUNC0 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sirfsoc_pmx*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pmxdev,
				unsigned selector,
				unsigned group)
{
	struct sirfsoc_pmx *spmx;

	spmx = FUNC0(pmxdev);
	FUNC1(spmx, selector, true);

	return 0;
}