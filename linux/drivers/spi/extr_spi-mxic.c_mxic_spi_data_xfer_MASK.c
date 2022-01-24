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
struct mxic_spi {scalar_t__ regs; } ;

/* Variables and functions */
 int INT_RX_NOT_EMPTY ; 
 scalar_t__ INT_STS ; 
 int INT_TX_EMPTY ; 
 scalar_t__ RXD ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int*,unsigned int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mxic_spi *mxic, const void *txbuf,
			      void *rxbuf, unsigned int len)
{
	unsigned int pos = 0;

	while (pos < len) {
		unsigned int nbytes = len - pos;
		u32 data = 0xffffffff;
		u32 sts;
		int ret;

		if (nbytes > 4)
			nbytes = 4;

		if (txbuf)
			FUNC2(&data, txbuf + pos, nbytes);

		ret = FUNC4(mxic->regs + INT_STS, sts,
					 sts & INT_TX_EMPTY, 0, USEC_PER_SEC);
		if (ret)
			return ret;

		FUNC5(data, mxic->regs + FUNC0(nbytes % 4));

		if (rxbuf) {
			ret = FUNC4(mxic->regs + INT_STS, sts,
						 sts & INT_TX_EMPTY, 0,
						 USEC_PER_SEC);
			if (ret)
				return ret;

			ret = FUNC4(mxic->regs + INT_STS, sts,
						 sts & INT_RX_NOT_EMPTY, 0,
						 USEC_PER_SEC);
			if (ret)
				return ret;

			data = FUNC3(mxic->regs + RXD);
			data >>= (8 * (4 - nbytes));
			FUNC2(rxbuf + pos, &data, nbytes);
			FUNC1(FUNC3(mxic->regs + INT_STS) & INT_RX_NOT_EMPTY);
		} else {
			FUNC3(mxic->regs + RXD);
		}
		FUNC1(FUNC3(mxic->regs + INT_STS) & INT_RX_NOT_EMPTY);

		pos += nbytes;
	}

	return 0;
}