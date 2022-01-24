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
typedef  scalar_t__ u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {int /*<<< orphan*/  errors_lock; scalar_t__ errors; } ;

/* Variables and functions */
 struct dsi_data* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC3(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC0(dsidev);
	unsigned long flags;
	u32 e;
	FUNC1(&dsi->errors_lock, flags);
	e = dsi->errors;
	dsi->errors = 0;
	FUNC2(&dsi->errors_lock, flags);
	return e;
}