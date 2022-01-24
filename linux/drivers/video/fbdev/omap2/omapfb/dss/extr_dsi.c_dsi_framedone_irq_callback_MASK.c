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
struct dsi_data {int /*<<< orphan*/  framedone_timeout_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct platform_device *dsidev = (struct platform_device *) data;
	struct dsi_data *dsi = FUNC1(dsidev);

	/* Note: We get FRAMEDONE when DISPC has finished sending pixels and
	 * turns itself off. However, DSI still has the pixels in its buffers,
	 * and is sending the data.
	 */

	FUNC0(&dsi->framedone_timeout_work);

	FUNC2(dsidev, 0);
}