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
struct vmbus_channel {TYPE_1__* primary_channel; } ;
struct TYPE_4__ {scalar_t__ irq; } ;
struct hv_uio_private_data {TYPE_2__ info; } ;
struct hv_device {int dummy; } ;
struct TYPE_3__ {struct hv_device* device_obj; } ;

/* Variables and functions */
 struct hv_uio_private_data* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct vmbus_channel *channel)
{
	struct hv_device *hv_dev = channel->primary_channel->device_obj;
	struct hv_uio_private_data *pdata = FUNC0(hv_dev);

	/*
	 * Turn off the interrupt file handle
	 * Next read for event will return -EIO
	 */
	pdata->info.irq = 0;

	/* Wake up reader */
	FUNC1(&pdata->info);
}