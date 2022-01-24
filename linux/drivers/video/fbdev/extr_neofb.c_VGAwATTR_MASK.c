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

/* Variables and functions */
 int /*<<< orphan*/  VGA_IS1_RC ; 
 scalar_t__ paletteEnabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC2(u8 index, u8 value)
{
	if (paletteEnabled)
		index &= ~0x20;
	else
		index |= 0x20;

	FUNC0(NULL, VGA_IS1_RC);
	FUNC1(NULL, index, value);
}