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
struct visor_segment_state {int dummy; } ;
struct visor_device {int /*<<< orphan*/ * pending_msg_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROLVM_DEVICE_CHANGESTATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct visor_device*,int,struct visor_segment_state) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct visor_device *dev_info,
					  int response,
					  struct visor_segment_state state)
{
	if (!dev_info->pending_msg_hdr)
		return;

	FUNC0(CONTROLVM_DEVICE_CHANGESTATE, dev_info,
				     response, state);
	FUNC1(dev_info->pending_msg_hdr);
	dev_info->pending_msg_hdr = NULL;
}