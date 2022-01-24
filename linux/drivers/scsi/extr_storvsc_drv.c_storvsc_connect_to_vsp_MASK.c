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
typedef  int /*<<< orphan*/  u32 ;
struct vmstorage_channel_properties {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmstorage_channel_properties*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct hv_device*,int) ; 
 int /*<<< orphan*/  storvsc_on_channel_callback ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hv_device *device, u32 ring_size,
				  bool is_fc)
{
	struct vmstorage_channel_properties props;
	int ret;

	FUNC0(&props, 0, sizeof(struct vmstorage_channel_properties));

	ret = FUNC2(device->channel,
			 ring_size,
			 ring_size,
			 (void *)&props,
			 sizeof(struct vmstorage_channel_properties),
			 storvsc_on_channel_callback, device->channel);

	if (ret != 0)
		return ret;

	ret = FUNC1(device, is_fc);

	return ret;
}