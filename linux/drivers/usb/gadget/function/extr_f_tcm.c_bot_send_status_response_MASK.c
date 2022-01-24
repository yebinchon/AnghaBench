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
struct usbg_cmd {int /*<<< orphan*/  is_read; } ;

/* Variables and functions */
 int FUNC0 (struct usbg_cmd*,int) ; 

__attribute__((used)) static int FUNC1(struct usbg_cmd *cmd)
{
	bool moved_data = false;

	if (!cmd->is_read)
		moved_data = true;
	return FUNC0(cmd, moved_data);
}