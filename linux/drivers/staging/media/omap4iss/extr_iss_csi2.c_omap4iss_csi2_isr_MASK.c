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
typedef  int u32 ;
struct iss_pipeline {int error; } ;
struct iss_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct iss_csi2_device {int /*<<< orphan*/ * contexts; int /*<<< orphan*/  regs1; struct iss_device* iss; int /*<<< orphan*/  available; TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI2_COMPLEXIO_IRQSTATUS ; 
 int /*<<< orphan*/  CSI2_IRQSTATUS ; 
 int CSI2_IRQ_COMPLEXIO_ERR ; 
 int CSI2_IRQ_CONTEXT0 ; 
 int CSI2_IRQ_ECC_CORRECTION ; 
 int CSI2_IRQ_ECC_NO_CORRECTION ; 
 int CSI2_IRQ_FIFO_OVF ; 
 int CSI2_IRQ_OCP_ERR ; 
 int CSI2_IRQ_SHORT_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct iss_csi2_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct iss_pipeline* FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct iss_csi2_device *csi2)
{
	struct iss_pipeline *pipe = FUNC4(&csi2->subdev.entity);
	u32 csi2_irqstatus, cpxio1_irqstatus;
	struct iss_device *iss = csi2->iss;

	if (!csi2->available)
		return;

	csi2_irqstatus = FUNC2(csi2->iss, csi2->regs1, CSI2_IRQSTATUS);
	FUNC3(csi2->iss, csi2->regs1, CSI2_IRQSTATUS, csi2_irqstatus);

	/* Failure Cases */
	if (csi2_irqstatus & CSI2_IRQ_COMPLEXIO_ERR) {
		cpxio1_irqstatus = FUNC2(csi2->iss, csi2->regs1,
						CSI2_COMPLEXIO_IRQSTATUS);
		FUNC3(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_IRQSTATUS,
			      cpxio1_irqstatus);
		FUNC1(iss->dev, "CSI2: ComplexIO Error IRQ %x\n",
			cpxio1_irqstatus);
		pipe->error = true;
	}

	if (csi2_irqstatus & (CSI2_IRQ_OCP_ERR |
			      CSI2_IRQ_SHORT_PACKET |
			      CSI2_IRQ_ECC_NO_CORRECTION |
			      CSI2_IRQ_COMPLEXIO_ERR |
			      CSI2_IRQ_FIFO_OVF)) {
		FUNC1(iss->dev,
			"CSI2 Err: OCP:%d SHORT:%d ECC:%d CPXIO:%d OVF:%d\n",
			csi2_irqstatus & CSI2_IRQ_OCP_ERR ? 1 : 0,
			csi2_irqstatus & CSI2_IRQ_SHORT_PACKET ? 1 : 0,
			csi2_irqstatus & CSI2_IRQ_ECC_NO_CORRECTION ? 1 : 0,
			csi2_irqstatus & CSI2_IRQ_COMPLEXIO_ERR ? 1 : 0,
			csi2_irqstatus & CSI2_IRQ_FIFO_OVF ? 1 : 0);
		pipe->error = true;
	}

	/* Successful cases */
	if (csi2_irqstatus & CSI2_IRQ_CONTEXT0)
		FUNC0(csi2, &csi2->contexts[0]);

	if (csi2_irqstatus & CSI2_IRQ_ECC_CORRECTION)
		FUNC1(iss->dev, "CSI2: ECC correction done\n");
}