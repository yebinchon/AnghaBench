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
struct w1_slave {int /*<<< orphan*/  master; } ;
struct w1_f1C_data {int validcrc; int /*<<< orphan*/ * memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC16_INIT ; 
 scalar_t__ CRC16_VALID ; 
 int EIO ; 
 int W1_F1C_READ_EEPROM ; 
 int W1_PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(struct w1_slave *sl, struct w1_f1C_data *data,
				int block)
{
	u8	wrbuf[3];
	int	off = block * W1_PAGE_SIZE;

	if (data->validcrc & (1 << block))
		return 0;

	if (FUNC2(sl)) {
		data->validcrc = 0;
		return -EIO;
	}

	wrbuf[0] = W1_F1C_READ_EEPROM;
	wrbuf[1] = off & 0xff;
	wrbuf[2] = off >> 8;
	FUNC3(sl->master, wrbuf, 3);
	FUNC1(sl->master, &data->memory[off], W1_PAGE_SIZE);

	/* cache the block if the CRC is valid */
	if (FUNC0(CRC16_INIT, &data->memory[off], W1_PAGE_SIZE) == CRC16_VALID)
		data->validcrc |= (1 << block);

	return 0;
}