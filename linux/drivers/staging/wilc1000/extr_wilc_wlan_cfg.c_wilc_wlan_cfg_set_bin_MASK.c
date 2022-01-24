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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int WILC_MAX_CFG_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(u8 *frame, u32 offset, u16 id, u8 *b, u32 size)
{
	u32 i;
	u8 checksum = 0;

	if ((offset + size + 5) >= WILC_MAX_CFG_FRAME_SIZE)
		return 0;

	FUNC1(id, &frame[offset]);
	FUNC1(size, &frame[offset + 2]);

	if ((b) && size != 0) {
		FUNC0(&frame[offset + 4], b, size);
		for (i = 0; i < size; i++)
			checksum += frame[offset + i + 4];
	}

	frame[offset + size + 4] = checksum;

	return (size + 5);
}