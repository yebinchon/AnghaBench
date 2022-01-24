#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* id; void* len; } ;
struct wsm_tx {int /*<<< orphan*/  queue_id; TYPE_3__ hdr; } ;
struct TYPE_7__ {int offset; } ;
struct cw1200_txinfo {int /*<<< orphan*/  queue; TYPE_4__* skb; TYPE_2__ txpriv; } ;
struct cw1200_common {TYPE_1__* hw; } ;
struct TYPE_9__ {int len; } ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_tx*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_4__*) ; 
 struct wsm_tx* FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wsm_tx *
FUNC6(struct cw1200_common *priv,
		struct cw1200_txinfo *t)
{
	struct wsm_tx *wsm;

	if (FUNC2(t->skb) < sizeof(struct wsm_tx)) {
		FUNC4(priv->hw->wiphy,
			  "Bug: no space allocated for WSM header. headroom: %d\n",
			  FUNC2(t->skb));
		return NULL;
	}

	wsm = FUNC3(t->skb, sizeof(struct wsm_tx));
	t->txpriv.offset += sizeof(struct wsm_tx);
	FUNC1(wsm, 0, sizeof(*wsm));
	wsm->hdr.len = FUNC0(t->skb->len);
	wsm->hdr.id = FUNC0(0x0004);
	wsm->queue_id = FUNC5(t->queue);
	return wsm;
}