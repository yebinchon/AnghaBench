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
typedef  unsigned int u8 ;
struct trf7970a {int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  dev; struct sk_buff* tx_skb; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  prefix ;

/* Variables and functions */
 unsigned int TRF7970A_CMD_BIT_CONTINUOUS ; 
 unsigned int TRF7970A_FIFO_IO_REGISTER ; 
 unsigned int TRF7970A_FIFO_SIZE ; 
 int /*<<< orphan*/  TRF7970A_FIFO_STATUS ; 
 unsigned int TRF7970A_FIFO_STATUS_OVERFLOW ; 
 int /*<<< orphan*/  TRF7970A_WAIT_FOR_FIFO_DRAIN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct trf7970a*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct trf7970a*,int) ; 
 int FUNC6 (struct trf7970a*,struct sk_buff*,unsigned int,unsigned int*,int) ; 

__attribute__((used)) static void FUNC7(struct trf7970a *trf)
{
	struct sk_buff *skb = trf->tx_skb;
	unsigned int len;
	int ret;
	u8 fifo_bytes;
	u8 prefix;

	ret = FUNC4(trf, TRF7970A_FIFO_STATUS, &fifo_bytes);
	if (ret) {
		FUNC5(trf, ret);
		return;
	}

	FUNC0(trf->dev, "Filling FIFO - fifo_bytes: 0x%x\n", fifo_bytes);

	fifo_bytes &= ~TRF7970A_FIFO_STATUS_OVERFLOW;

	/* Calculate how much more data can be written to the fifo */
	len = TRF7970A_FIFO_SIZE - fifo_bytes;
	if (!len) {
		FUNC3(&trf->timeout_work,
			FUNC2(TRF7970A_WAIT_FOR_FIFO_DRAIN_TIMEOUT));
		return;
	}

	len = FUNC1(skb->len, len);

	prefix = TRF7970A_CMD_BIT_CONTINUOUS | TRF7970A_FIFO_IO_REGISTER;

	ret = FUNC6(trf, skb, len, &prefix, sizeof(prefix));
	if (ret)
		FUNC5(trf, ret);
}