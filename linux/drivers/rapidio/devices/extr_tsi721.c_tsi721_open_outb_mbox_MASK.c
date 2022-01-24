#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct tsi721_omsg_desc {void* next_hi; void* next_lo; scalar_t__ msg_info; void* type_id; } ;
struct tsi721_dma_sts {int dummy; } ;
struct tsi721_device {int flags; int* omsg_init; TYPE_2__* omsg_ring; TYPE_3__* pdev; scalar_t__ regs; TYPE_1__* msix; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int size; int sts_size; struct tsi721_omsg_desc** omq_base; scalar_t__* omq_phys; struct tsi721_omsg_desc* omd_base; scalar_t__ omd_phys; struct tsi721_omsg_desc* sts_base; scalar_t__ sts_phys; scalar_t__ wr_count; scalar_t__ tx_slot; int /*<<< orphan*/  lock; scalar_t__ sts_rdptr; void* dev_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; int /*<<< orphan*/  irq_name; } ;

/* Variables and functions */
 int DTYPE5 ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OMSG ; 
 int RIO_MAX_MBOX ; 
 int FUNC0 (int) ; 
 int TSI721_MSG_BUFFER_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int TSI721_OBDMAC_CTL_INIT ; 
 int TSI721_OBDMAC_CTL_RETRY_THR ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int TSI721_OBDMAC_DPTRL_MASK ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int TSI721_OBDMAC_DSBL_MASK ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  TSI721_OBDMAC_INT_ALL ; 
 int TSI721_OMSGD_MIN_RING_SIZE ; 
 int TSI721_OMSGD_RING_SIZE ; 
 int TSI721_USING_MSIX ; 
 int TSI721_VECT_OMB0_DONE ; 
 int TSI721_VECT_OMB0_INT ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,struct tsi721_omsg_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int mbox_sel ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct tsi721_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsi721_omsg_msix ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(struct rio_mport *mport, void *dev_id,
				 int mbox, int entries)
{
	struct tsi721_device *priv = mport->priv;
	struct tsi721_omsg_desc *bd_ptr;
	int i, rc = 0;

	if ((entries < TSI721_OMSGD_MIN_RING_SIZE) ||
	    (entries > (TSI721_OMSGD_RING_SIZE)) ||
	    (!FUNC14(entries)) || mbox >= RIO_MAX_MBOX) {
		rc = -EINVAL;
		goto out;
	}

	if ((mbox_sel & (1 << mbox)) == 0) {
		rc = -ENODEV;
		goto out;
	}

	priv->omsg_ring[mbox].dev_id = dev_id;
	priv->omsg_ring[mbox].size = entries;
	priv->omsg_ring[mbox].sts_rdptr = 0;
	FUNC18(&priv->omsg_ring[mbox].lock);

	/* Outbound Msg Buffer allocation based on
	   the number of maximum descriptor entries */
	for (i = 0; i < entries; i++) {
		priv->omsg_ring[mbox].omq_base[i] =
			FUNC9(
				&priv->pdev->dev, TSI721_MSG_BUFFER_SIZE,
				&priv->omsg_ring[mbox].omq_phys[i],
				GFP_KERNEL);
		if (priv->omsg_ring[mbox].omq_base[i] == NULL) {
			FUNC20(OMSG, &priv->pdev->dev,
				  "ENOMEM for OB_MSG_%d data buffer", mbox);
			rc = -ENOMEM;
			goto out_buf;
		}
	}

	/* Outbound message descriptor allocation */
	priv->omsg_ring[mbox].omd_base = FUNC9(
				&priv->pdev->dev,
				(entries + 1) * sizeof(struct tsi721_omsg_desc),
				&priv->omsg_ring[mbox].omd_phys, GFP_KERNEL);
	if (priv->omsg_ring[mbox].omd_base == NULL) {
		FUNC20(OMSG, &priv->pdev->dev,
			"ENOMEM for OB_MSG_%d descriptor memory", mbox);
		rc = -ENOMEM;
		goto out_buf;
	}

	priv->omsg_ring[mbox].tx_slot = 0;

	/* Outbound message descriptor status FIFO allocation */
	priv->omsg_ring[mbox].sts_size = FUNC17(entries + 1);
	priv->omsg_ring[mbox].sts_base = FUNC9(&priv->pdev->dev,
							    priv->omsg_ring[mbox].sts_size * sizeof(struct tsi721_dma_sts),
							    &priv->omsg_ring[mbox].sts_phys,
							    GFP_KERNEL);
	if (priv->omsg_ring[mbox].sts_base == NULL) {
		FUNC20(OMSG, &priv->pdev->dev,
			"ENOMEM for OB_MSG_%d status FIFO", mbox);
		rc = -ENOMEM;
		goto out_desc;
	}

	/*
	 * Configure Outbound Messaging Engine
	 */

	/* Setup Outbound Message descriptor pointer */
	FUNC13(((u64)priv->omsg_ring[mbox].omd_phys >> 32),
			priv->regs + FUNC2(mbox));
	FUNC13(((u64)priv->omsg_ring[mbox].omd_phys &
					TSI721_OBDMAC_DPTRL_MASK),
			priv->regs + FUNC3(mbox));

	/* Setup Outbound Message descriptor status FIFO */
	FUNC13(((u64)priv->omsg_ring[mbox].sts_phys >> 32),
			priv->regs + FUNC4(mbox));
	FUNC13(((u64)priv->omsg_ring[mbox].sts_phys &
					TSI721_OBDMAC_DSBL_MASK),
			priv->regs + FUNC5(mbox));
	FUNC13(FUNC0(priv->omsg_ring[mbox].sts_size),
		priv->regs + (u32)FUNC6(mbox));

	/* Enable interrupts */

#ifdef CONFIG_PCI_MSI
	if (priv->flags & TSI721_USING_MSIX) {
		int idx = TSI721_VECT_OMB0_DONE + mbox;

		/* Request interrupt service if we are in MSI-X mode */
		rc = request_irq(priv->msix[idx].vector, tsi721_omsg_msix, 0,
				 priv->msix[idx].irq_name, (void *)priv);

		if (rc) {
			tsi_debug(OMSG, &priv->pdev->dev,
				"Unable to get MSI-X IRQ for OBOX%d-DONE",
				mbox);
			goto out_stat;
		}

		idx = TSI721_VECT_OMB0_INT + mbox;
		rc = request_irq(priv->msix[idx].vector, tsi721_omsg_msix, 0,
				 priv->msix[idx].irq_name, (void *)priv);

		if (rc)	{
			tsi_debug(OMSG, &priv->pdev->dev,
				"Unable to get MSI-X IRQ for MBOX%d-INT", mbox);
			idx = TSI721_VECT_OMB0_DONE + mbox;
			free_irq(priv->msix[idx].vector, (void *)priv);
			goto out_stat;
		}
	}
#endif /* CONFIG_PCI_MSI */

	FUNC19(priv, mbox, TSI721_OBDMAC_INT_ALL);

	/* Initialize Outbound Message descriptors ring */
	bd_ptr = priv->omsg_ring[mbox].omd_base;
	bd_ptr[entries].type_id = FUNC8(DTYPE5 << 29);
	bd_ptr[entries].msg_info = 0;
	bd_ptr[entries].next_lo =
		FUNC8((u64)priv->omsg_ring[mbox].omd_phys &
		TSI721_OBDMAC_DPTRL_MASK);
	bd_ptr[entries].next_hi =
		FUNC8((u64)priv->omsg_ring[mbox].omd_phys >> 32);
	priv->omsg_ring[mbox].wr_count = 0;
	FUNC15();

	/* Initialize Outbound Message engine */
	FUNC13(TSI721_OBDMAC_CTL_RETRY_THR | TSI721_OBDMAC_CTL_INIT,
		  priv->regs + FUNC1(mbox));
	FUNC12(priv->regs + FUNC7(mbox));
	FUNC21(10);

	priv->omsg_init[mbox] = 1;

	return 0;

#ifdef CONFIG_PCI_MSI
out_stat:
	dma_free_coherent(&priv->pdev->dev,
		priv->omsg_ring[mbox].sts_size * sizeof(struct tsi721_dma_sts),
		priv->omsg_ring[mbox].sts_base,
		priv->omsg_ring[mbox].sts_phys);

	priv->omsg_ring[mbox].sts_base = NULL;
#endif /* CONFIG_PCI_MSI */

out_desc:
	FUNC10(&priv->pdev->dev,
		(entries + 1) * sizeof(struct tsi721_omsg_desc),
		priv->omsg_ring[mbox].omd_base,
		priv->omsg_ring[mbox].omd_phys);

	priv->omsg_ring[mbox].omd_base = NULL;

out_buf:
	for (i = 0; i < priv->omsg_ring[mbox].size; i++) {
		if (priv->omsg_ring[mbox].omq_base[i]) {
			FUNC10(&priv->pdev->dev,
				TSI721_MSG_BUFFER_SIZE,
				priv->omsg_ring[mbox].omq_base[i],
				priv->omsg_ring[mbox].omq_phys[i]);

			priv->omsg_ring[mbox].omq_base[i] = NULL;
		}
	}

out:
	return rc;
}