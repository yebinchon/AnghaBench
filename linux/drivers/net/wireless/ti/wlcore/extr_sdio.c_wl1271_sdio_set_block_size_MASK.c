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
struct wl12xx_sdio_glue {int /*<<< orphan*/  dev; } ;
struct sdio_func {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct wl12xx_sdio_glue* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdio_func* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct device *child,
				       unsigned int blksz)
{
	struct wl12xx_sdio_glue *glue = FUNC0(child->parent);
	struct sdio_func *func = FUNC1(glue->dev);

	FUNC2(func);
	FUNC4(func, blksz);
	FUNC3(func);
}