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
struct hwbus_priv {scalar_t__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct hwbus_priv* FUNC1 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC2(struct sdio_func *func)
{
	struct hwbus_priv *self = FUNC1(func);

	/* note:  sdio_host already claimed here. */
	if (self->core)
		FUNC0(self->core);
}