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
struct ti_qspi {int dummy; } ;

/* Variables and functions */
 int BUSY ; 
 unsigned long QSPI_COMPLETION_TIMEOUT ; 
 int /*<<< orphan*/  QSPI_SPI_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 int FUNC2 (struct ti_qspi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline u32 FUNC4(struct ti_qspi *qspi)
{
	u32 stat;
	unsigned long timeout = jiffies + QSPI_COMPLETION_TIMEOUT;

	stat = FUNC2(qspi, QSPI_SPI_STATUS_REG);
	while ((stat & BUSY) && FUNC3(timeout, jiffies)) {
		FUNC1();
		stat = FUNC2(qspi, QSPI_SPI_STATUS_REG);
	}

	FUNC0(stat & BUSY, "qspi busy\n");
	return stat & BUSY;
}