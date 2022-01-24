#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  membase; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct serial_8250_men_mcb_data {int /*<<< orphan*/  line; TYPE_2__ uart; } ;
struct mcb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct mcb_device*,int /*<<< orphan*/ ) ; 
 struct serial_8250_men_mcb_data* FUNC2 (struct mcb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mcb_device *mdev)
{
	int num_ports, i;
	struct serial_8250_men_mcb_data *data = FUNC2(mdev);

	if (!data)
		return;

	num_ports = FUNC1(mdev, data[0].uart.port.membase);
	if (num_ports < 0 || num_ports > 4) {
		FUNC0(&mdev->dev, "error retrieving number of ports!\n");
		return;
	}

	for (i = 0; i < num_ports; i++)
		FUNC3(data[i].line);
}