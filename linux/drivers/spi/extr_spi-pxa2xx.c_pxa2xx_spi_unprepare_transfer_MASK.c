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
struct spi_controller {int dummy; } ;
struct driver_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSCR0 ; 
 int SSCR0_SSE ; 
 int FUNC0 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*,int /*<<< orphan*/ ,int) ; 
 struct driver_data* FUNC2 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC3(struct spi_controller *controller)
{
	struct driver_data *drv_data = FUNC2(controller);

	/* Disable the SSP now */
	FUNC1(drv_data, SSCR0,
			 FUNC0(drv_data, SSCR0) & ~SSCR0_SSE);

	return 0;
}