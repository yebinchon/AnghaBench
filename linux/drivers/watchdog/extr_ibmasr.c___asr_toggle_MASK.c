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

/* Variables and functions */
 int /*<<< orphan*/  asr_read_addr ; 
 unsigned char asr_toggle_mask ; 
 int /*<<< orphan*/  asr_write_addr ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned char reg;

	reg = FUNC0(asr_read_addr);

	FUNC1(reg & ~asr_toggle_mask, asr_write_addr);
	reg = FUNC0(asr_read_addr);

	FUNC1(reg | asr_toggle_mask, asr_write_addr);
	reg = FUNC0(asr_read_addr);

	FUNC1(reg & ~asr_toggle_mask, asr_write_addr);
	reg = FUNC0(asr_read_addr);
}