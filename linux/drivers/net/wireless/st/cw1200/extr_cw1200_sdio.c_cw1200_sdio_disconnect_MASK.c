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
struct sdio_func {int dummy; } ;
struct hwbus_priv {int /*<<< orphan*/ * core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 struct hwbus_priv* FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct sdio_func *func)
{
	struct hwbus_priv *self = FUNC5(func);

	if (self) {
		FUNC1(self);
		if (self->core) {
			FUNC0(self->core);
			self->core = NULL;
		}
		FUNC3(func);
		FUNC4(func);
		FUNC6(func);
		FUNC7(func, NULL);
		FUNC2(self);
	}
}