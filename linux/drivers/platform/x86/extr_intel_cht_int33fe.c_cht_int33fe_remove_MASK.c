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
struct platform_device {int dummy; } ;
struct cht_int33fe_data {int /*<<< orphan*/  max17047; int /*<<< orphan*/  fusb302; int /*<<< orphan*/  pi3usb30532; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cht_int33fe_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cht_int33fe_data* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct cht_int33fe_data *data = FUNC2(pdev);

	FUNC1(data->pi3usb30532);
	FUNC1(data->fusb302);
	FUNC1(data->max17047);

	FUNC0(data);

	return 0;
}