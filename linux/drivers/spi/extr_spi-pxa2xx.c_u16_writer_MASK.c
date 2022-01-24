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
typedef  int /*<<< orphan*/  u16 ;
struct driver_data {scalar_t__ tx; scalar_t__ tx_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSDR ; 
 scalar_t__ FUNC0 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct driver_data *drv_data)
{
	if (FUNC0(drv_data)
		|| (drv_data->tx == drv_data->tx_end))
		return 0;

	FUNC1(drv_data, SSDR, *(u16 *)(drv_data->tx));
	drv_data->tx += 2;

	return 1;
}