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
typedef  int u32 ;
struct tcpm_port {int /*<<< orphan*/  vdm_state_machine; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 scalar_t__ CMD_ATTENTION ; 
 scalar_t__ FUNC0 (int) ; 
 int USB_SID_PD ; 
 int FUNC1 (int,int,int) ; 
 int VDO_MAX_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpm_port*,int,int const*,int) ; 

__attribute__((used)) static void FUNC5(struct tcpm_port *port, u32 vid, int cmd,
			  const u32 *data, int count)
{
	u32 header;

	if (FUNC2(count > VDO_MAX_SIZE - 1))
		count = VDO_MAX_SIZE - 1;

	/* set VDM header with VID & CMD */
	header = FUNC1(vid, ((vid & USB_SID_PD) == USB_SID_PD) ?
			1 : (FUNC0(cmd) <= CMD_ATTENTION), cmd);
	FUNC4(port, header, data, count);

	FUNC3(port->wq, &port->vdm_state_machine, 0);
}