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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  VIASR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static inline void FUNC2(u32 data)
{
	FUNC1(VIASR, 0x40, 0x04, 0x04); /* enable reset */
	FUNC0(VIASR, 0x4A, data & 0xFF);
	FUNC0(VIASR, 0x4B, (data >> 8) & 0xFF);
	FUNC0(VIASR, 0x4C, (data >> 16) & 0xFF);
	FUNC1(VIASR, 0x40, 0x00, 0x04); /* disable reset */
}