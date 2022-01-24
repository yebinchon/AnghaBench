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
struct via_port_cfg {scalar_t__ type; int /*<<< orphan*/  ioport_index; int /*<<< orphan*/  io_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 scalar_t__ VIA_PORT_GPIO ; 
 TYPE_1__* i2c_vdev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void *data)
{
	struct via_port_cfg *adap_data = data;
	unsigned long flags;
	int ret = 0;

	FUNC0(&i2c_vdev->reg_lock, flags);
	if (adap_data->type == VIA_PORT_GPIO)
		FUNC3(adap_data->io_port, adap_data->ioport_index,
			0, 0x80);
	if (FUNC2(adap_data->io_port, adap_data->ioport_index) & 0x08)
		ret = 1;
	FUNC1(&i2c_vdev->reg_lock, flags);
	return ret;
}