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
typedef  int u16 ;

/* Variables and functions */
#define  CFG_BIN_CMD 132 
#define  CFG_BYTE_CMD 131 
#define  CFG_HWORD_CMD 130 
#define  CFG_STR_CMD 129 
#define  CFG_WORD_CMD 128 
 int FUNC0 (int*,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC4 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(u8 *frame, u32 offset, u16 id, u8 *buf, int size)
{
	u8 type = (id >> 12) & 0xf;
	int ret = 0;

	switch (type) {
	case CFG_BYTE_CMD:
		if (size >= 1)
			ret = FUNC1(frame, offset, id, *buf);
		break;

	case CFG_HWORD_CMD:
		if (size >= 2)
			ret = FUNC2(frame, offset, id,
						      *((u16 *)buf));
		break;

	case CFG_WORD_CMD:
		if (size >= 4)
			ret = FUNC4(frame, offset, id,
						     *((u32 *)buf));
		break;

	case CFG_STR_CMD:
		ret = FUNC3(frame, offset, id, buf, size);
		break;

	case CFG_BIN_CMD:
		ret = FUNC0(frame, offset, id, buf, size);
		break;
	}

	return ret;
}