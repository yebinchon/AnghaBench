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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int quit; TYPE_1__* hif_func; struct txq_entry_t* tx_buffer; struct txq_entry_t* rx_buffer; } ;
struct txq_entry_t {int /*<<< orphan*/  priv; int /*<<< orphan*/  (* tx_complete_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct rxq_entry_t {int /*<<< orphan*/  priv; int /*<<< orphan*/  (* tx_complete_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* hif_deinit ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct txq_entry_t*) ; 
 struct wilc_vif* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct txq_entry_t* FUNC4 (struct wilc*) ; 
 struct txq_entry_t* FUNC5 (struct net_device*) ; 

void FUNC6(struct net_device *dev)
{
	struct txq_entry_t *tqe;
	struct rxq_entry_t *rqe;
	struct wilc_vif *vif = FUNC1(dev);
	struct wilc *wilc = vif->wilc;

	wilc->quit = 1;
	do {
		tqe = FUNC5(dev);
		if (!tqe)
			break;
		if (tqe->tx_complete_func)
			tqe->tx_complete_func(tqe->priv, 0);
		FUNC0(tqe);
	} while (1);

	do {
		rqe = FUNC4(wilc);
		if (!rqe)
			break;
		FUNC0(rqe);
	} while (1);

	FUNC0(wilc->rx_buffer);
	wilc->rx_buffer = NULL;
	FUNC0(wilc->tx_buffer);
	wilc->tx_buffer = NULL;
	wilc->hif_func->hif_deinit(NULL);
}