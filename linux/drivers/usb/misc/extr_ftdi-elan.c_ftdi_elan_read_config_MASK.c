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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct usb_ftdi {scalar_t__ disconnected; int command_next; int command_head; int respond_next; int respond_head; int /*<<< orphan*/  u132_lock; struct u132_respond* respond; struct u132_command* command; } ;
struct u132_respond {int* result; int header; int address; int /*<<< orphan*/  wait_completion; int /*<<< orphan*/ * value; } ;
struct u132_command {int header; int length; int address; int width; int /*<<< orphan*/ * buffer; scalar_t__ value; scalar_t__ follows; } ;

/* Variables and functions */
 size_t COMMAND_MASK ; 
 int COMMAND_SIZE ; 
 int ENODEV ; 
 size_t RESPOND_MASK ; 
 int RESPOND_SIZE ; 
 int cPCIcfgrd ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct usb_ftdi *ftdi, int config_offset,
				 u8 width, u32 *data)
{
	u8 addressofs = config_offset / 4;
wait:if (ftdi->disconnected > 0) {
		return -ENODEV;
	} else {
		int command_size;
		int respond_size;
		FUNC3(&ftdi->u132_lock);
		command_size = ftdi->command_next - ftdi->command_head;
		respond_size = ftdi->respond_next - ftdi->respond_head;
		if (command_size < COMMAND_SIZE && respond_size < RESPOND_SIZE)
		{
			struct u132_command *command = &ftdi->command[
				COMMAND_MASK & ftdi->command_next];
			struct u132_respond *respond = &ftdi->respond[
				RESPOND_MASK & ftdi->respond_next];
			int result = -ENODEV;
			respond->result = &result;
			respond->header = command->header = 0x00 | (cPCIcfgrd &
								    0x0F);
			command->length = 0x04;
			respond->address = command->address = addressofs;
			command->width = 0x00 | (width & 0x0F);
			command->follows = 0;
			command->value = 0;
			command->buffer = NULL;
			respond->value = data;
			FUNC1(&respond->wait_completion);
			ftdi->command_next += 1;
			ftdi->respond_next += 1;
			FUNC0(ftdi);
			FUNC4(&ftdi->u132_lock);
			FUNC5(&respond->wait_completion);
			return result;
		} else {
			FUNC4(&ftdi->u132_lock);
			FUNC2(100);
			goto wait;
		}
	}
}