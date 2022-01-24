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
struct TYPE_4__ {TYPE_1__* ring_buffer; } ;
struct vmbus_channel {TYPE_2__ inbound; struct hv_device* device_obj; } ;
struct hv_uio_private_data {int /*<<< orphan*/  info; } ;
struct hv_device {int dummy; } ;
struct TYPE_3__ {int interrupt_mask; } ;

/* Variables and functions */
 struct hv_uio_private_data* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void *context)
{
	struct vmbus_channel *chan = context;
	struct hv_device *hv_dev = chan->device_obj;
	struct hv_uio_private_data *pdata = FUNC0(hv_dev);

	chan->inbound.ring_buffer->interrupt_mask = 1;
	FUNC2();

	FUNC1(&pdata->info);
}