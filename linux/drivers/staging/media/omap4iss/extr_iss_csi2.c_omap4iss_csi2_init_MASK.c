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
struct iss_csi2_device {int available; int /*<<< orphan*/  wait; void* state; int /*<<< orphan*/  subclk; int /*<<< orphan*/ * phy; int /*<<< orphan*/  regs1; struct iss_device* iss; } ;
struct iss_device {int /*<<< orphan*/  csiphy2; int /*<<< orphan*/  csiphy1; struct iss_csi2_device csi2b; struct iss_csi2_device csi2a; } ;

/* Variables and functions */
 void* ISS_PIPELINE_STREAM_STOPPED ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_CSI2_A_REGS1 ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_CSI2_B_REGS1 ; 
 int /*<<< orphan*/  OMAP4_ISS_SUBCLK_CSI2_A ; 
 int /*<<< orphan*/  OMAP4_ISS_SUBCLK_CSI2_B ; 
 int FUNC0 (struct iss_csi2_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct iss_device *iss)
{
	struct iss_csi2_device *csi2a = &iss->csi2a;
	struct iss_csi2_device *csi2b = &iss->csi2b;
	int ret;

	csi2a->iss = iss;
	csi2a->available = 1;
	csi2a->regs1 = OMAP4_ISS_MEM_CSI2_A_REGS1;
	csi2a->phy = &iss->csiphy1;
	csi2a->subclk = OMAP4_ISS_SUBCLK_CSI2_A;
	csi2a->state = ISS_PIPELINE_STREAM_STOPPED;
	FUNC1(&csi2a->wait);

	ret = FUNC0(csi2a, "a");
	if (ret < 0)
		return ret;

	csi2b->iss = iss;
	csi2b->available = 1;
	csi2b->regs1 = OMAP4_ISS_MEM_CSI2_B_REGS1;
	csi2b->phy = &iss->csiphy2;
	csi2b->subclk = OMAP4_ISS_SUBCLK_CSI2_B;
	csi2b->state = ISS_PIPELINE_STREAM_STOPPED;
	FUNC1(&csi2b->wait);

	ret = FUNC0(csi2b, "b");
	if (ret < 0)
		return ret;

	return 0;
}