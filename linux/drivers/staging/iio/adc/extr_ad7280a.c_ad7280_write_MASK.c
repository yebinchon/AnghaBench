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
struct ad7280_state {int /*<<< orphan*/ * buf; int /*<<< orphan*/  spi; int /*<<< orphan*/  crc_tab; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ad7280_state *st, unsigned int devaddr,
			unsigned int addr, bool all, unsigned int val)
{
	unsigned int reg = devaddr << 27 | addr << 21 |
			(val & 0xFF) << 13 | all << 12;

	reg |= FUNC0(st->crc_tab, reg >> 11) << 3 | 0x2;
	st->buf[0] = FUNC1(reg);

	return FUNC2(st->spi, &st->buf[0], 4);
}