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
typedef  unsigned int u16 ;
struct mcfqspi {int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
 scalar_t__ MCFQSPI_QAR_CMDBUF ; 
 scalar_t__ MCFQSPI_QAR_RXBUF ; 
 scalar_t__ MCFQSPI_QAR_TXBUF ; 
 int /*<<< orphan*/  MCFQSPI_QCR_BITSE ; 
 int /*<<< orphan*/  MCFQSPI_QDLYR_SPE ; 
 int /*<<< orphan*/  FUNC0 (struct mcfqspi*) ; 
 void* FUNC1 (struct mcfqspi*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcfqspi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mcfqspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mcfqspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mcfqspi*,unsigned int) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct mcfqspi *mcfqspi, unsigned count,
				   const u16 *txbuf, u16 *rxbuf)
{
	unsigned i, n, offset = 0;

	n = FUNC6(count, 16u);

	FUNC2(mcfqspi, MCFQSPI_QAR_CMDBUF);
	for (i = 0; i < n; ++i)
		FUNC4(mcfqspi, MCFQSPI_QCR_BITSE);

	FUNC2(mcfqspi, MCFQSPI_QAR_TXBUF);
	if (txbuf)
		for (i = 0; i < n; ++i)
			FUNC4(mcfqspi, *txbuf++);
	else
		for (i = 0; i < count; ++i)
			FUNC4(mcfqspi, 0);

	count -= n;
	if (count) {
		u16 qwr = 0xf08;
		FUNC5(mcfqspi, 0x700);
		FUNC3(mcfqspi, MCFQSPI_QDLYR_SPE);

		do {
			FUNC7(mcfqspi->waitq, !FUNC0(mcfqspi));
			FUNC5(mcfqspi, qwr);
			FUNC3(mcfqspi, MCFQSPI_QDLYR_SPE);
			if (rxbuf) {
				FUNC2(mcfqspi,
					       MCFQSPI_QAR_RXBUF + offset);
				for (i = 0; i < 8; ++i)
					*rxbuf++ = FUNC1(mcfqspi);
			}
			n = FUNC6(count, 8u);
			if (txbuf) {
				FUNC2(mcfqspi,
					       MCFQSPI_QAR_TXBUF + offset);
				for (i = 0; i < n; ++i)
					FUNC4(mcfqspi, *txbuf++);
			}
			qwr = (offset ? 0x808 : 0x000) + ((n - 1) << 8);
			offset ^= 8;
			count -= n;
		} while (count);
		FUNC7(mcfqspi->waitq, !FUNC0(mcfqspi));
		FUNC5(mcfqspi, qwr);
		FUNC3(mcfqspi, MCFQSPI_QDLYR_SPE);
		if (rxbuf) {
			FUNC2(mcfqspi, MCFQSPI_QAR_RXBUF + offset);
			for (i = 0; i < 8; ++i)
				*rxbuf++ = FUNC1(mcfqspi);
			offset ^= 8;
		}
	} else {
		FUNC5(mcfqspi, (n - 1) << 8);
		FUNC3(mcfqspi, MCFQSPI_QDLYR_SPE);
	}
	FUNC7(mcfqspi->waitq, !FUNC0(mcfqspi));
	if (rxbuf) {
		FUNC2(mcfqspi, MCFQSPI_QAR_RXBUF + offset);
		for (i = 0; i < n; ++i)
			*rxbuf++ = FUNC1(mcfqspi);
	}
}