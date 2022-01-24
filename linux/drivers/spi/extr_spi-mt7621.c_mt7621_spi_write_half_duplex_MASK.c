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
typedef  int /*<<< orphan*/  u8 ;
struct mt7621_spi {int pending_write; } ;

/* Variables and functions */
 scalar_t__ MT7621_SPI_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (struct mt7621_spi*) ; 
 int FUNC1 (struct mt7621_spi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7621_spi*,scalar_t__,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct mt7621_spi *rs,
					 int tx_len, const u8 *buf)
{
	int len = rs->pending_write;
	int val = 0;

	if (len & 3) {
		val = FUNC1(rs, MT7621_SPI_OPCODE + (len & ~3));
		if (len < 4) {
			val <<= (4 - len) * 8;
			val = FUNC3(val);
		}
	}

	while (tx_len > 0) {
		if (len >= 36) {
			rs->pending_write = len;
			FUNC0(rs);
			len = 0;
		}

		val |= *buf++ << (8 * (len & 3));
		len++;
		if ((len & 3) == 0) {
			if (len == 4)
				/* The byte-order of the opcode is weird! */
				val = FUNC3(val);
			FUNC2(rs, MT7621_SPI_OPCODE + len - 4, val);
			val = 0;
		}
		tx_len -= 1;
	}

	if (len & 3) {
		if (len < 4) {
			val = FUNC3(val);
			val >>= (4 - len) * 8;
		}
		FUNC2(rs, MT7621_SPI_OPCODE + (len & ~3), val);
	}

	rs->pending_write = len;
}