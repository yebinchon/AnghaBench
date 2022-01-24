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
struct armada_37xx_pinctrl {int ngroups; int nfuncs; TYPE_1__* data; int /*<<< orphan*/  dev; int /*<<< orphan*/  funcs; struct armada_37xx_pin_group* groups; } ;
struct armada_37xx_pin_group {int npins; int extra_npins; scalar_t__* funcs; scalar_t__ extra_pin; scalar_t__* pins; scalar_t__ start_pin; } ;
struct TYPE_2__ {int nr_pins; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NB_FUNCS ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct armada_37xx_pinctrl *info)
{
	int n, num = 0, funcsize = info->data->nr_pins;

	for (n = 0; n < info->ngroups; n++) {
		struct armada_37xx_pin_group *grp = &info->groups[n];
		int i, j, f;

		grp->pins = FUNC2(info->dev,
					 grp->npins + grp->extra_npins,
					 sizeof(*grp->pins),
					 GFP_KERNEL);
		if (!grp->pins)
			return -ENOMEM;

		for (i = 0; i < grp->npins; i++)
			grp->pins[i] = grp->start_pin + i;

		for (j = 0; j < grp->extra_npins; j++)
			grp->pins[i+j] = grp->extra_pin + j;

		for (f = 0; (f < NB_FUNCS) && grp->funcs[f]; f++) {
			int ret;
			/* check for unique functions and count groups */
			ret = FUNC0(info->funcs, &funcsize,
					    grp->funcs[f]);
			if (ret == -EOVERFLOW)
				FUNC1(info->dev,
					"More functions than pins(%d)\n",
					info->data->nr_pins);
			if (ret < 0)
				continue;
			num++;
		}
	}

	info->nfuncs = num;

	return 0;
}