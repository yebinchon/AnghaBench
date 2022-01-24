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
struct tsi721_imsg_desc {int /*<<< orphan*/  msg_info; int /*<<< orphan*/  bufptr_lo; int /*<<< orphan*/  bufptr_hi; } ;
struct tsi721_device {scalar_t__ regs; TYPE_1__* imsg_ring; int /*<<< orphan*/ * imsg_init; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_2__ {size_t desc_rdptr; size_t rx_slot; size_t size; int* imfq_base; size_t fq_wrptr; int /*<<< orphan*/ ** imq_base; scalar_t__ buf_phys; void* buf_base; struct tsi721_imsg_desc* imd_base; } ;

/* Variables and functions */
 int RIO_MAX_MSG_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int TSI721_IMD_BCOUNT ; 
 int TSI721_IMD_HO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (size_t,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int) ; 

__attribute__((used)) static void *FUNC7(struct rio_mport *mport, int mbox)
{
	struct tsi721_device *priv = mport->priv;
	struct tsi721_imsg_desc *desc;
	u32 rx_slot;
	void *rx_virt = NULL;
	u64 rx_phys;
	void *buf = NULL;
	u64 *free_ptr;
	int ch = mbox + 4;
	int msg_size;

	if (!priv->imsg_init[mbox])
		return NULL;

	desc = priv->imsg_ring[mbox].imd_base;
	desc += priv->imsg_ring[mbox].desc_rdptr;

	if (!(FUNC5(desc->msg_info) & TSI721_IMD_HO))
		goto out;

	rx_slot = priv->imsg_ring[mbox].rx_slot;
	while (priv->imsg_ring[mbox].imq_base[rx_slot] == NULL) {
		if (++rx_slot == priv->imsg_ring[mbox].size)
			rx_slot = 0;
	}

	rx_phys = ((u64)FUNC5(desc->bufptr_hi) << 32) |
			FUNC5(desc->bufptr_lo);

	rx_virt = priv->imsg_ring[mbox].buf_base +
		  (rx_phys - (u64)priv->imsg_ring[mbox].buf_phys);

	buf = priv->imsg_ring[mbox].imq_base[rx_slot];
	msg_size = FUNC5(desc->msg_info) & TSI721_IMD_BCOUNT;
	if (msg_size == 0)
		msg_size = RIO_MAX_MSG_SIZE;

	FUNC6(buf, rx_virt, msg_size);
	priv->imsg_ring[mbox].imq_base[rx_slot] = NULL;

	desc->msg_info &= FUNC2(~TSI721_IMD_HO);
	if (++priv->imsg_ring[mbox].desc_rdptr == priv->imsg_ring[mbox].size)
		priv->imsg_ring[mbox].desc_rdptr = 0;

	FUNC4(priv->imsg_ring[mbox].desc_rdptr,
		priv->regs + FUNC0(ch));

	/* Return free buffer into the pointer list */
	free_ptr = priv->imsg_ring[mbox].imfq_base;
	free_ptr[priv->imsg_ring[mbox].fq_wrptr] = FUNC3(rx_phys);

	if (++priv->imsg_ring[mbox].fq_wrptr == priv->imsg_ring[mbox].size)
		priv->imsg_ring[mbox].fq_wrptr = 0;

	FUNC4(priv->imsg_ring[mbox].fq_wrptr,
		priv->regs + FUNC1(ch));
out:
	return buf;
}