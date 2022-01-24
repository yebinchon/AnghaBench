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
struct wl1251_sdio {int dummy; } ;
struct wl1251 {scalar_t__ irq; struct wl1251_sdio* if_priv; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct wl1251*) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1251_sdio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 struct wl1251* FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1251*) ; 

__attribute__((used)) static void FUNC9(struct sdio_func *func)
{
	struct wl1251 *wl = FUNC5(func);
	struct wl1251_sdio *wl_sdio = wl->if_priv;

	/* Undo decrement done above in wl1251_probe */
	FUNC2(&func->dev);

	if (wl->irq)
		FUNC0(wl->irq, wl);
	FUNC8(wl);
	FUNC1(wl_sdio);

	FUNC3(func);
	FUNC7(func);
	FUNC4(func);
	FUNC6(func);
}