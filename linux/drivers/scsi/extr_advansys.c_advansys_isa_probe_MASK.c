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
struct device {int dummy; } ;
struct asc_board {struct Scsi_Host* shost; struct device* dev; int /*<<< orphan*/  irq; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 int ASC_CHIP_VER_ISA_BIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASC_IOADR_GAP ; 
 int /*<<< orphan*/  ASC_IS_ISA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * _asc_def_iop_base ; 
 int FUNC3 (struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advansys_template ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 struct asc_board* FUNC10 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC11(struct device *dev, unsigned int id)
{
	int err = -ENODEV;
	PortAddr iop_base = _asc_def_iop_base[id];
	struct Scsi_Host *shost;
	struct asc_board *board;

	if (!FUNC7(iop_base, ASC_IOADR_GAP, DRV_NAME)) {
		FUNC0(1, "I/O port 0x%x busy\n", iop_base);
		return -ENODEV;
	}
	FUNC0(1, "probing I/O port 0x%x\n", iop_base);
	if (!FUNC1(iop_base))
		goto release_region;
	if (!(FUNC2(iop_base, ASC_IS_ISA) & ASC_CHIP_VER_ISA_BIT))
		goto release_region;

	err = -ENOMEM;
	shost = FUNC8(&advansys_template, sizeof(*board));
	if (!shost)
		goto release_region;

	board = FUNC10(shost);
	board->irq = FUNC4(iop_base);
	board->dev = dev;
	board->shost = shost;

	err = FUNC3(shost, iop_base, ASC_IS_ISA);
	if (err)
		goto free_host;

	FUNC5(dev, shost);
	return 0;

 free_host:
	FUNC9(shost);
 release_region:
	FUNC6(iop_base, ASC_IOADR_GAP);
	return err;
}