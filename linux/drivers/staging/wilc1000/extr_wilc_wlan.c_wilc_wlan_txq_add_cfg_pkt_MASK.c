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
typedef  int /*<<< orphan*/  u32 ;
struct wilc_vif {int /*<<< orphan*/  ndev; struct wilc* wilc; } ;
struct wilc {int /*<<< orphan*/  cfg_event; scalar_t__ quit; } ;
struct txq_entry_t {struct wilc_vif* vif; int /*<<< orphan*/  ack_idx; int /*<<< orphan*/ * priv; int /*<<< orphan*/ * tx_complete_func; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NOT_TCP_ACK ; 
 int /*<<< orphan*/  WILC_CFG_PKT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct txq_entry_t* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wilc_vif*,struct txq_entry_t*) ; 

__attribute__((used)) static int FUNC4(struct wilc_vif *vif, u8 *buffer,
				     u32 buffer_size)
{
	struct txq_entry_t *tqe;
	struct wilc *wilc = vif->wilc;

	FUNC2(vif->ndev, "Adding config packet ...\n");
	if (wilc->quit) {
		FUNC2(vif->ndev, "Return due to clear function\n");
		FUNC0(&wilc->cfg_event);
		return 0;
	}

	tqe = FUNC1(sizeof(*tqe), GFP_ATOMIC);
	if (!tqe)
		return 0;

	tqe->type = WILC_CFG_PKT;
	tqe->buffer = buffer;
	tqe->buffer_size = buffer_size;
	tqe->tx_complete_func = NULL;
	tqe->priv = NULL;
	tqe->ack_idx = NOT_TCP_ACK;
	tqe->vif = vif;

	FUNC3(vif, tqe);

	return 1;
}