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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct hwbus_priv {int /*<<< orphan*/ * core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct hwbus_priv* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *func)
{
	struct hwbus_priv *self = FUNC4(func);

	if (self) {
		FUNC1(self);
		if (self->core) {
			FUNC0(self->core);
			self->core = NULL;
		}
	}
	FUNC2(FUNC3(&func->dev));

	return 0;
}