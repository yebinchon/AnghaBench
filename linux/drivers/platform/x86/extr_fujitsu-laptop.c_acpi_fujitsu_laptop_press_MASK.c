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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct acpi_device *device, int scancode)
{
	struct fujitsu_laptop *priv = FUNC0(device);
	int ret;

	ret = FUNC3(&priv->fifo, (unsigned char *)&scancode,
			      sizeof(scancode), &priv->fifo_lock);
	if (ret != sizeof(scancode)) {
		FUNC2(&priv->input->dev, "Could not push scancode [0x%x]\n",
			 scancode);
		return;
	}
	FUNC4(priv->input, scancode, 1, false);
	FUNC1(&priv->input->dev, "Push scancode into ringbuffer [0x%x]\n",
		scancode);
}