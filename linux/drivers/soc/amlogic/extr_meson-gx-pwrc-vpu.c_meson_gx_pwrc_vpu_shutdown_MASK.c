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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* power_off ) (TYPE_1__*) ;} ;
struct meson_gx_pwrc_vpu {TYPE_1__ genpd; } ;

/* Variables and functions */
 int FUNC0 (struct meson_gx_pwrc_vpu*) ; 
 struct meson_gx_pwrc_vpu* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev)
{
	struct meson_gx_pwrc_vpu *vpu_pd = FUNC1(pdev);
	bool powered_off;

	powered_off = FUNC0(vpu_pd);
	if (!powered_off)
		vpu_pd->genpd.power_off(&vpu_pd->genpd);
}