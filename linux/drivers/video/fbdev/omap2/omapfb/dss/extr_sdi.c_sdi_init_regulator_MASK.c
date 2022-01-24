#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator {int dummy; } ;
struct TYPE_4__ {struct regulator* vdds_sdi_reg; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 struct regulator* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ sdi ; 

__attribute__((used)) static int FUNC4(void)
{
	struct regulator *vdds_sdi;

	if (sdi.vdds_sdi_reg)
		return 0;

	vdds_sdi = FUNC3(&sdi.pdev->dev, "vdds_sdi");
	if (FUNC1(vdds_sdi)) {
		if (FUNC2(vdds_sdi) != -EPROBE_DEFER)
			FUNC0("can't get VDDS_SDI regulator\n");
		return FUNC2(vdds_sdi);
	}

	sdi.vdds_sdi_reg = vdds_sdi;

	return 0;
}