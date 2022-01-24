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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rmobile_reset_nb ; 
 int /*<<< orphan*/  sysc_base2 ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int error;

	sysc_base2 = FUNC2(pdev->dev.of_node, 1);
	if (!sysc_base2)
		return -ENODEV;

	error = FUNC3(&rmobile_reset_nb);
	if (error) {
		FUNC0(&pdev->dev,
			"cannot register restart handler (err=%d)\n", error);
		goto fail_unmap;
	}

	return 0;

fail_unmap:
	FUNC1(sysc_base2);
	return error;
}