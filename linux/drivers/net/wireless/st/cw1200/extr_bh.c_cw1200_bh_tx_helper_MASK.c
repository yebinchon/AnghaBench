#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wsm_hdr {int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;
struct cw1200_common {int device_can_sleep; int wsm_tx_seq; scalar_t__ wsm_enable_wsm_dumps; int /*<<< orphan*/  hwbus_priv; TYPE_1__* hwbus_ops; int /*<<< orphan*/  bh_tx; } ;
struct TYPE_2__ {size_t (* align_size ) (int /*<<< orphan*/ ,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 size_t EFFECTIVE_BUF_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int WSM_TX_SEQ_MAX ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cw1200_common*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct cw1200_common*) ; 
 int FUNC9 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC13 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct cw1200_common*) ; 
 int FUNC15 (struct cw1200_common*,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct cw1200_common*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct cw1200_common*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct cw1200_common *priv,
			       int *pending_tx,
			       int *tx_burst)
{
	size_t tx_len;
	u8 *data;
	int ret;
	struct wsm_hdr *wsm;

	if (priv->device_can_sleep) {
		ret = FUNC9(priv);
		if (FUNC1(ret < 0)) { /* Error in wakeup */
			*pending_tx = 1;
			return 0;
		} else if (ret) { /* Woke up */
			priv->device_can_sleep = false;
		} else { /* Did not awake */
			*pending_tx = 1;
			return 0;
		}
	}

	FUNC14(priv);
	ret = FUNC15(priv, &data, &tx_len, tx_burst);
	if (ret <= 0) {
		FUNC16(priv, 1);
		if (FUNC1(ret < 0))
			return ret; /* Error */
		return 0; /* No work */
	}

	wsm = (struct wsm_hdr *)data;
	FUNC0(tx_len < sizeof(*wsm));
	FUNC0(FUNC5(wsm->len) != tx_len);

	FUNC6(1, &priv->bh_tx);

	tx_len = priv->hwbus_ops->align_size(
		priv->hwbus_priv, tx_len);

	/* Check if not exceeding CW1200 capabilities */
	if (FUNC2(tx_len > EFFECTIVE_BUF_SIZE))
		FUNC10("Write aligned len: %zu\n", tx_len);

	wsm->id &= FUNC4(0xffff ^ FUNC3(WSM_TX_SEQ_MAX));
	wsm->id |= FUNC4(FUNC3(priv->wsm_tx_seq));

	if (FUNC1(FUNC7(priv, data, tx_len))) {
		FUNC11("tx blew up, len %zu\n", tx_len);
		FUNC16(priv, 1);
		return -1; /* Error */
	}

	if (priv->wsm_enable_wsm_dumps)
		FUNC12("--> ",
				     DUMP_PREFIX_NONE,
				     data,
				     FUNC5(wsm->len));

	FUNC17(priv, data);
	priv->wsm_tx_seq = (priv->wsm_tx_seq + 1) & WSM_TX_SEQ_MAX;

	if (*tx_burst > 1) {
		FUNC8(priv);
		return 1; /* Work remains */
	}

	return 0;
}