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
struct omap_dss_device {int dummy; } ;
struct dpi_data {int data_lines; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct dpi_data* FUNC0 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct omap_dss_device *dssdev, int data_lines)
{
	struct dpi_data *dpi = FUNC0(dssdev);

	FUNC1(&dpi->lock);

	dpi->data_lines = data_lines;

	FUNC2(&dpi->lock);
}