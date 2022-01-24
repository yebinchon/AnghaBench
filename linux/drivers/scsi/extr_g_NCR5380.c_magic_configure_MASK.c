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
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(int idx, u8 irq, u8 magic[])
{
	u8 cfg = 0;

	FUNC0(magic[0], 0x779);
	FUNC0(magic[1], 0x379);
	FUNC0(magic[2], 0x379);
	FUNC0(magic[3], 0x379);
	FUNC0(magic[4], 0x379);

	if (irq == 9)
		irq = 2;

	if (idx >= 0 && idx <= 7)
		cfg = 0x80 | idx | (irq << 4);
	FUNC0(cfg, 0x379);
}