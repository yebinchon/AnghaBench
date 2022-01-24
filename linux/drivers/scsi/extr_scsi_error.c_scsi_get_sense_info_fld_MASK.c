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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int* FUNC2 (int const*,int,int /*<<< orphan*/ ) ; 

bool FUNC3(const u8 *sense_buffer, int sb_len,
			     u64 *info_out)
{
	const u8 * ucp;

	if (sb_len < 7)
		return false;
	switch (sense_buffer[0] & 0x7f) {
	case 0x70:
	case 0x71:
		if (sense_buffer[0] & 0x80) {
			*info_out = FUNC0(&sense_buffer[3]);
			return true;
		}
		return false;
	case 0x72:
	case 0x73:
		ucp = FUNC2(sense_buffer, sb_len,
					   0 /* info desc */);
		if (ucp && (0xa == ucp[1])) {
			*info_out = FUNC1(&ucp[4]);
			return true;
		}
		return false;
	default:
		return false;
	}
}