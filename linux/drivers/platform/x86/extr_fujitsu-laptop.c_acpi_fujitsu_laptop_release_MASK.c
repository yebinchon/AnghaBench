#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fujitsu_laptop {TYPE_1__* input; int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  fifo; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  scancode ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct fujitsu_laptop* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct acpi_device *device)
{
	struct fujitsu_laptop *priv = FUNC0(device);
	int scancode, ret;

	while (true) {
		ret = FUNC2(&priv->fifo, (unsigned char *)&scancode,
				       sizeof(scancode), &priv->fifo_lock);
		if (ret != sizeof(scancode))
			return;
		FUNC3(priv->input, scancode, 0, false);
		FUNC1(&priv->input->dev,
			"Pop scancode from ringbuffer [0x%x]\n", scancode);
	}
}