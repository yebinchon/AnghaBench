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
struct wl1251 {int dummy; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdio_func*) ; 
 int FUNC1 (struct sdio_func*,void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct sdio_func* FUNC4 (struct wl1251*) ; 

__attribute__((used)) static void FUNC5(struct wl1251 *wl, int addr,
			     void *buf, size_t len)
{
	int ret;
	struct sdio_func *func = FUNC4(wl);

	FUNC0(func);
	ret = FUNC1(func, buf, addr, len);
	if (ret)
		FUNC3("sdio read failed (%d)", ret);
	FUNC2(func);
}