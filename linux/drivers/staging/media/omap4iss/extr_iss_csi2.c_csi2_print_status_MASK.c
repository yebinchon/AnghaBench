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
struct iss_device {int /*<<< orphan*/  dev; } ;
struct iss_csi2_device {int /*<<< orphan*/  regs1; int /*<<< orphan*/  available; struct iss_device* iss; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLEXIO_CFG ; 
 int /*<<< orphan*/  COMPLEXIO_IRQENABLE ; 
 int /*<<< orphan*/  COMPLEXIO_IRQSTATUS ; 
 int /*<<< orphan*/  FUNC0 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_H ; 
 int /*<<< orphan*/  DBG_P ; 
 int /*<<< orphan*/  IRQENABLE ; 
 int /*<<< orphan*/  IRQSTATUS ; 
 int /*<<< orphan*/  SHORT_PACKET ; 
 int /*<<< orphan*/  SYSCONFIG ; 
 int /*<<< orphan*/  SYSSTATUS ; 
 int /*<<< orphan*/  TIMING ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(struct iss_csi2_device *csi2)
{
	struct iss_device *iss = csi2->iss;

	if (!csi2->available)
		return;

	FUNC9(iss->dev, "-------------CSI2 Register dump-------------\n");

	FUNC0(iss, csi2->regs1, SYSCONFIG);
	FUNC0(iss, csi2->regs1, SYSSTATUS);
	FUNC0(iss, csi2->regs1, IRQENABLE);
	FUNC0(iss, csi2->regs1, IRQSTATUS);
	FUNC0(iss, csi2->regs1, CTRL);
	FUNC0(iss, csi2->regs1, DBG_H);
	FUNC0(iss, csi2->regs1, COMPLEXIO_CFG);
	FUNC0(iss, csi2->regs1, COMPLEXIO_IRQSTATUS);
	FUNC0(iss, csi2->regs1, SHORT_PACKET);
	FUNC0(iss, csi2->regs1, COMPLEXIO_IRQENABLE);
	FUNC0(iss, csi2->regs1, DBG_P);
	FUNC0(iss, csi2->regs1, TIMING);
	FUNC0(iss, csi2->regs1, FUNC1(0));
	FUNC0(iss, csi2->regs1, FUNC2(0));
	FUNC0(iss, csi2->regs1, FUNC4(0));
	FUNC0(iss, csi2->regs1, FUNC7(0));
	FUNC0(iss, csi2->regs1, FUNC8(0));
	FUNC0(iss, csi2->regs1, FUNC5(0));
	FUNC0(iss, csi2->regs1, FUNC6(0));
	FUNC0(iss, csi2->regs1, FUNC3(0));

	FUNC9(iss->dev, "--------------------------------------------\n");
}