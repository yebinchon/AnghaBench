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
 int ETIMEDOUT ; 
 unsigned long QSPI_COMPLETION_TIMEOUT ; 
 int /*<<< orphan*/  QSPI_SPI_STATUS_REG ; 
 int WC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 int FUNC1 (struct ti_qspi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct ti_qspi *qspi)
{
	u32 stat;
	unsigned long timeout = jiffies + QSPI_COMPLETION_TIMEOUT;

	do {
		stat = FUNC1(qspi, QSPI_SPI_STATUS_REG);
		if (stat & WC)
			return 0;
		FUNC0();
	} while (FUNC2(timeout, jiffies));

	stat = FUNC1(qspi, QSPI_SPI_STATUS_REG);
	if (stat & WC)
		return 0;
	return  -ETIMEDOUT;
}