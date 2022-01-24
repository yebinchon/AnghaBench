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
struct calling_interface_buffer {int* input; int* output; int /*<<< orphan*/  cmd_select; int /*<<< orphan*/  cmd_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_INFO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SELECT_APP_REGISTRATION ; 
 int FUNC0 (struct calling_interface_buffer*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct calling_interface_buffer*) ; 
 struct calling_interface_buffer* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(bool enable)
{
	struct calling_interface_buffer *buffer;
	int ret;

	buffer = FUNC3(sizeof(struct calling_interface_buffer), GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;
	buffer->cmd_class = CLASS_INFO;
	buffer->cmd_select = SELECT_APP_REGISTRATION;
	buffer->input[0] = 0x10000;
	buffer->input[1] = 0x51534554;
	buffer->input[3] = enable;
	ret = FUNC0(buffer);
	if (ret == 0)
		ret = buffer->output[0];
	FUNC2(buffer);

	return FUNC1(ret);
}