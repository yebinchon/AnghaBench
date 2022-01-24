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
struct kbd_state {int triggers; int timeout_value; int timeout_unit; int als_setting; int als_value; int level; int timeout_value_ac; int timeout_unit_ac; int /*<<< orphan*/  mode_bit; } ;
struct calling_interface_buffer {int* output; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_KBD_BACKLIGHT ; 
 int /*<<< orphan*/  SELECT_KBD_BACKLIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct calling_interface_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct calling_interface_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct kbd_state *state)
{
	struct calling_interface_buffer buffer;
	int ret;

	FUNC0(&buffer, 0x1, 0, 0, 0);
	ret = FUNC1(&buffer,
				CLASS_KBD_BACKLIGHT, SELECT_KBD_BACKLIGHT);
	if (ret)
		return ret;

	state->mode_bit = FUNC2(buffer.output[1] & 0xFFFF);
	if (state->mode_bit != 0)
		state->mode_bit--;

	state->triggers = (buffer.output[1] >> 16) & 0xFF;
	state->timeout_value = (buffer.output[1] >> 24) & 0x3F;
	state->timeout_unit = (buffer.output[1] >> 30) & 0x3;
	state->als_setting = buffer.output[2] & 0xFF;
	state->als_value = (buffer.output[2] >> 8) & 0xFF;
	state->level = (buffer.output[2] >> 16) & 0xFF;
	state->timeout_value_ac = (buffer.output[2] >> 24) & 0x3F;
	state->timeout_unit_ac = (buffer.output[2] >> 30) & 0x3;

	return ret;
}