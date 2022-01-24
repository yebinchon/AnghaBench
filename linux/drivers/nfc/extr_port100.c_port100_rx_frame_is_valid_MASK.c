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
typedef  scalar_t__ u8 ;
struct port100_frame {scalar_t__ start_frame; scalar_t__ extended_frame; scalar_t__ datalen_checksum; int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct port100_frame*) ; 
 int /*<<< orphan*/  PORT100_FRAME_EXT ; 
 int /*<<< orphan*/  PORT100_FRAME_SOF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(void *_frame)
{
	u8 checksum;
	struct port100_frame *frame = _frame;

	if (frame->start_frame != FUNC1(PORT100_FRAME_SOF) ||
	    frame->extended_frame != FUNC1(PORT100_FRAME_EXT))
		return false;

	checksum = FUNC3(FUNC2(frame->datalen));
	if (checksum != frame->datalen_checksum)
		return false;

	checksum = FUNC4(frame->data,
					 FUNC2(frame->datalen));
	if (checksum != FUNC0(frame))
		return false;

	return true;
}