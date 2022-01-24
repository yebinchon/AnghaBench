#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s3c_adc_client {int dummy; } ;
struct s3c_adc_bat_pdata {scalar_t__ gpio_charge_finished; int /*<<< orphan*/  (* exit ) () ;scalar_t__ backup_volt_mult; } ;
struct TYPE_4__ {struct s3c_adc_bat_pdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  psy; } ;
struct TYPE_5__ {int /*<<< orphan*/  psy; } ;

/* Variables and functions */
 TYPE_3__ backup_bat ; 
 int /*<<< orphan*/  bat_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__ main_bat ; 
 struct s3c_adc_client* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s3c_adc_client*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct s3c_adc_client *client = FUNC4(pdev);
	struct s3c_adc_bat_pdata *pdata = pdev->dev.platform_data;

	FUNC5(main_bat.psy);
	if (pdata->backup_volt_mult)
		FUNC5(backup_bat.psy);

	FUNC6(client);

	if (pdata->gpio_charge_finished >= 0) {
		FUNC1(FUNC3(pdata->gpio_charge_finished), NULL);
		FUNC2(pdata->gpio_charge_finished);
	}

	FUNC0(&bat_work);

	if (pdata->exit)
		pdata->exit();

	return 0;
}