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
typedef  int /*<<< orphan*/  u32 ;
struct wl1251_sdio {int /*<<< orphan*/  elp_val; struct sdio_func* func; } ;
struct wl1251 {struct wl1251_sdio* if_priv; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct wl1251 *wl, int addr, u32 val)
{
	int ret = 0;
	struct wl1251_sdio *wl_sdio = wl->if_priv;
	struct sdio_func *func = wl_sdio->func;

	FUNC0(func);
	FUNC2(func, val, addr, &ret);
	FUNC1(func);

	if (ret)
		FUNC3("sdio_writeb failed (%d)", ret);
	else
		wl_sdio->elp_val = val;
}