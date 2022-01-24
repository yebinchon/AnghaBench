#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {size_t offset; } ;
struct cw1200_txinfo {size_t hdrlen; TYPE_2__ txpriv; TYPE_3__* skb; } ;
struct cw1200_common {TYPE_1__* hw; } ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_TX_2BYTES_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 size_t FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static int
FUNC4(struct cw1200_common *priv,
		  struct cw1200_txinfo *t,
		  u8 *flags)
{
	size_t offset = (size_t)t->skb->data & 3;

	if (!offset)
		return 0;

	if (offset & 1) {
		FUNC3(priv->hw->wiphy,
			  "Bug: attempt to transmit a frame with wrong alignment: %zu\n",
			  offset);
		return -EINVAL;
	}

	if (FUNC1(t->skb) < offset) {
		FUNC3(priv->hw->wiphy,
			  "Bug: no space allocated for DMA alignment. headroom: %d\n",
			  FUNC1(t->skb));
		return -ENOMEM;
	}
	FUNC2(t->skb, offset);
	t->hdrlen += offset;
	t->txpriv.offset += offset;
	*flags |= WSM_TX_2BYTES_SHIFT;
	FUNC0(priv);
	return 0;
}