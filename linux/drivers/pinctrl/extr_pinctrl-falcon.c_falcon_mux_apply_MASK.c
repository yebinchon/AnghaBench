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
struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {TYPE_1__* mfp; int /*<<< orphan*/ * membase; } ;
struct TYPE_2__ {int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PORTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ltq_pinmux_info* FUNC4 (struct pinctrl_dev*) ; 

__attribute__((used)) static inline int FUNC5(struct pinctrl_dev *pctrldev,
			int mfp, int mux)
{
	struct ltq_pinmux_info *info = FUNC4(pctrldev);
	int port = FUNC1(info->mfp[mfp].pin);

	if ((port >= PORTS) || (!info->membase[port]))
		return -ENODEV;

	FUNC3(info->membase[port], mux,
		FUNC0(FUNC2(info->mfp[mfp].pin)));
	return 0;
}