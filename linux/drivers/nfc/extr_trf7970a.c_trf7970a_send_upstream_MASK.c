#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct trf7970a {int aborting; TYPE_1__* rx_skb; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  ddev; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  state; int /*<<< orphan*/ * tx_skb; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  ECANCELED ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRF7970A_ST_IDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct trf7970a *trf)
{
	FUNC3(trf->tx_skb);
	trf->tx_skb = NULL;

	if (trf->rx_skb && !FUNC1(trf->rx_skb) && !trf->aborting)
		FUNC5("trf7970a rx data: ", DUMP_PREFIX_NONE,
				     16, 1, trf->rx_skb->data, trf->rx_skb->len,
				     false);

	trf->state = TRF7970A_ST_IDLE;

	if (trf->aborting) {
		FUNC2(trf->dev, "Abort process complete\n");

		if (!FUNC1(trf->rx_skb)) {
			FUNC4(trf->rx_skb);
			trf->rx_skb = FUNC0(-ECANCELED);
		}

		trf->aborting = false;
	}

	trf->cb(trf->ddev, trf->cb_arg, trf->rx_skb);

	trf->rx_skb = NULL;
}