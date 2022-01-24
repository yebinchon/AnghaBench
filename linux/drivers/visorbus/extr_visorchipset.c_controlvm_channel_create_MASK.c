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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  address; } ;
struct visorchipset_device {struct visorchannel* controlvm_channel; TYPE_1__ controlvm_params; } ;
struct visorchannel {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VMCALL_CONTROLVM_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  visor_controlvm_channel_guid ; 
 struct visorchannel* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct visorchipset_device *dev)
{
	struct visorchannel *chan;
	u64 addr;
	int err;

	err = FUNC0(VMCALL_CONTROLVM_ADDR,
			    FUNC1(&dev->controlvm_params));
	if (err)
		return err;
	addr = dev->controlvm_params.address;
	chan = FUNC2(addr, GFP_KERNEL,
				   &visor_controlvm_channel_guid, true);
	if (!chan)
		return -ENOMEM;
	dev->controlvm_channel = chan;
	return 0;
}