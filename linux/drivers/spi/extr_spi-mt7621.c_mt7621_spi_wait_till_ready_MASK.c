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
struct mt7621_spi {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MT7621_SPI_TRANS ; 
 int RALINK_SPI_WAIT_MAX_LOOP ; 
 int SPITRANS_BUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct mt7621_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct mt7621_spi *rs)
{
	int i;

	for (i = 0; i < RALINK_SPI_WAIT_MAX_LOOP; i++) {
		u32 status;

		status = FUNC1(rs, MT7621_SPI_TRANS);
		if ((status & SPITRANS_BUSY) == 0)
			return 0;
		FUNC0();
		FUNC2(1);
	}

	return -ETIMEDOUT;
}