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
struct wl12xx_sdio_glue {int /*<<< orphan*/  core; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wl12xx_sdio_glue* FUNC2 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC3(struct sdio_func *func)
{
	struct wl12xx_sdio_glue *glue = FUNC2(func);

	/* Undo decrement done above in wl1271_probe */
	FUNC1(&func->dev);

	FUNC0(glue->core);
}