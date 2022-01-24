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
struct rfkill {int dummy; } ;
struct calling_interface_buffer {int* output; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLASS_INFO ; 
 int /*<<< orphan*/  SELECT_RFKILL ; 
 int /*<<< orphan*/  FUNC1 (struct calling_interface_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*,int,int,int) ; 
 int FUNC3 (struct calling_interface_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rfkill *rfkill, void *data)
{
	int radio = ((unsigned long)data & 0xF);
	struct calling_interface_buffer buffer;
	int hwswitch;
	int status;
	int ret;

	FUNC1(&buffer, 0, 0, 0, 0);
	ret = FUNC3(&buffer, CLASS_INFO, SELECT_RFKILL);
	status = buffer.output[1];

	if (ret != 0 || !(status & FUNC0(0))) {
		return;
	}

	FUNC1(&buffer, 0x2, 0, 0, 0);
	ret = FUNC3(&buffer, CLASS_INFO, SELECT_RFKILL);
	hwswitch = buffer.output[1];

	if (ret != 0)
		return;

	FUNC2(rfkill, radio, status, hwswitch);
}