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
typedef  int u32 ;
typedef  int /*<<< orphan*/  avmcard ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static int FUNC1(avmcard *card, u32 reg, u8 val)
{
	u8 cmd = 0x00;
	if (FUNC0(card, &cmd, 1) == 0
	    && FUNC0(card, &reg, 4) == 0) {
		u32 tmp = val;
		return FUNC0(card, &tmp, 4);
	}
	return -1;
}