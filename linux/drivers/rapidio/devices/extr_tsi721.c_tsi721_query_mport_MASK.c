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
typedef  int u32 ;
struct tsi721_device {scalar_t__ regs; } ;
struct rio_mport_attr {int link_speed; int link_width; int flags; scalar_t__ dma_align; int /*<<< orphan*/  dma_max_size; scalar_t__ dma_max_sge; } ;
struct rio_mport {struct tsi721_device* priv; } ;

/* Variables and functions */
 int RIO_LINK_DOWN ; 
 int RIO_MPORT_DMA ; 
 int RIO_MPORT_DMA_SG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RIO_PORT_N_CTL2_SEL_BAUD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RIO_PORT_N_CTL_IPW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RIO_PORT_N_ERR_STS_PORT_OK ; 
 int /*<<< orphan*/  TSI721_BDMA_MAX_BCOUNT ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct rio_mport *mport,
			      struct rio_mport_attr *attr)
{
	struct tsi721_device *priv = mport->priv;
	u32 rval;

	rval = FUNC3(priv->regs + 0x100 + FUNC2(0, 0));
	if (rval & RIO_PORT_N_ERR_STS_PORT_OK) {
		rval = FUNC3(priv->regs + 0x100 + FUNC0(0, 0));
		attr->link_speed = (rval & RIO_PORT_N_CTL2_SEL_BAUD) >> 28;
		rval = FUNC3(priv->regs + 0x100 + FUNC1(0, 0));
		attr->link_width = (rval & RIO_PORT_N_CTL_IPW) >> 27;
	} else
		attr->link_speed = RIO_LINK_DOWN;

#ifdef CONFIG_RAPIDIO_DMA_ENGINE
	attr->flags = RIO_MPORT_DMA | RIO_MPORT_DMA_SG;
	attr->dma_max_sge = 0;
	attr->dma_max_size = TSI721_BDMA_MAX_BCOUNT;
	attr->dma_align = 0;
#else
	attr->flags = 0;
#endif
	return 0;
}