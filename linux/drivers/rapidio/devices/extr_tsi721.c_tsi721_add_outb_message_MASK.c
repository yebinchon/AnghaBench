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
typedef  int u64 ;
typedef  size_t u32 ;
struct tsi721_omsg_desc {void* type_id; void* bufptr_hi; void* bufptr_lo; void* msg_info; } ;
struct tsi721_device {TYPE_1__* omsg_ring; scalar_t__ regs; int /*<<< orphan*/ * omsg_init; } ;
struct rio_mport {int sys_size; struct tsi721_device* priv; } ;
struct rio_dev {int destid; } ;
struct TYPE_2__ {size_t tx_slot; scalar_t__ size; int /*<<< orphan*/  lock; int /*<<< orphan*/  wr_count; scalar_t__* omq_phys; struct tsi721_omsg_desc* omd_base; int /*<<< orphan*/ * omq_base; } ;

/* Variables and functions */
 int DTYPE4 ; 
 int EINVAL ; 
 size_t TSI721_MSG_MAX_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int TSI721_OMD_IOF ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC8(struct rio_mport *mport, struct rio_dev *rdev, int mbox,
			void *buffer, size_t len)
{
	struct tsi721_device *priv = mport->priv;
	struct tsi721_omsg_desc *desc;
	u32 tx_slot;
	unsigned long flags;

	if (!priv->omsg_init[mbox] ||
	    len > TSI721_MSG_MAX_SIZE || len < 8)
		return -EINVAL;

	FUNC6(&priv->omsg_ring[mbox].lock, flags);

	tx_slot = priv->omsg_ring[mbox].tx_slot;

	/* Copy copy message into transfer buffer */
	FUNC5(priv->omsg_ring[mbox].omq_base[tx_slot], buffer, len);

	if (len & 0x7)
		len += 8;

	/* Build descriptor associated with buffer */
	desc = priv->omsg_ring[mbox].omd_base;
	desc[tx_slot].type_id = FUNC1((DTYPE4 << 29) | rdev->destid);
#ifdef TSI721_OMSG_DESC_INT
	/* Request IOF_DONE interrupt generation for each N-th frame in queue */
	if (tx_slot % 4 == 0)
		desc[tx_slot].type_id |= cpu_to_le32(TSI721_OMD_IOF);
#endif
	desc[tx_slot].msg_info =
		FUNC1((mport->sys_size << 26) | (mbox << 22) |
			    (0xe << 12) | (len & 0xff8));
	desc[tx_slot].bufptr_lo =
		FUNC1((u64)priv->omsg_ring[mbox].omq_phys[tx_slot] &
			    0xffffffff);
	desc[tx_slot].bufptr_hi =
		FUNC1((u64)priv->omsg_ring[mbox].omq_phys[tx_slot] >> 32);

	priv->omsg_ring[mbox].wr_count++;

	/* Go to next descriptor */
	if (++priv->omsg_ring[mbox].tx_slot == priv->omsg_ring[mbox].size) {
		priv->omsg_ring[mbox].tx_slot = 0;
		/* Move through the ring link descriptor at the end */
		priv->omsg_ring[mbox].wr_count++;
	}

	FUNC4();

	/* Set new write count value */
	FUNC3(priv->omsg_ring[mbox].wr_count,
		priv->regs + FUNC0(mbox));
	FUNC2(priv->regs + FUNC0(mbox));

	FUNC7(&priv->omsg_ring[mbox].lock, flags);

	return 0;
}