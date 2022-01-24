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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_diu_data {int /*<<< orphan*/  diu_reg; int /*<<< orphan*/ * fsl_diu_info; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int NUM_AOIS ; 
 struct fsl_diu_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct fsl_diu_data *data;
	int i;

	data = FUNC0(&pdev->dev);
	FUNC1(&data->fsl_diu_info[0]);

	FUNC2(data->irq, data->diu_reg);

	for (i = 0; i < NUM_AOIS; i++)
		FUNC4(&data->fsl_diu_info[i]);

	FUNC3(data->diu_reg);

	return 0;
}