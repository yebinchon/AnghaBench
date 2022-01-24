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
struct driver_data {TYPE_3__* controller; TYPE_2__* pdev; int /*<<< orphan*/  clear_sr; } ;
struct TYPE_6__ {TYPE_1__* cur_msg; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SSCR0 ; 
 int SSCR0_SSE ; 
 int /*<<< orphan*/  SSTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*) ; 
 int FUNC3 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct driver_data *drv_data, const char* msg)
{
	/* Stop and reset SSP */
	FUNC7(drv_data, drv_data->clear_sr);
	FUNC5(drv_data);
	if (!FUNC1(drv_data))
		FUNC4(drv_data, SSTO, 0);
	FUNC2(drv_data);
	FUNC4(drv_data, SSCR0,
			 FUNC3(drv_data, SSCR0) & ~SSCR0_SSE);

	FUNC0(&drv_data->pdev->dev, "%s\n", msg);

	drv_data->controller->cur_msg->status = -EIO;
	FUNC6(drv_data->controller);
}