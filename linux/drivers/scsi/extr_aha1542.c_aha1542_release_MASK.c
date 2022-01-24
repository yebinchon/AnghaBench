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
struct mailbox {int dummy; } ;
struct device {int dummy; } ;
struct ccb {int dummy; } ;
struct aha1542_hostdata {int /*<<< orphan*/  mb_handle; int /*<<< orphan*/  mb; int /*<<< orphan*/  ccb_handle; int /*<<< orphan*/  ccb; } ;
struct Scsi_Host {int dma_channel; scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; struct device* dma_dev; } ;

/* Variables and functions */
 int AHA1542_MAILBOXES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 struct aha1542_hostdata* FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC7(struct Scsi_Host *sh)
{
	struct aha1542_hostdata *aha1542 = FUNC6(sh);
	struct device *dev = sh->dma_dev;

	FUNC5(sh);
	if (sh->dma_channel != 0xff)
		FUNC1(sh->dma_channel);
	FUNC0(dev, AHA1542_MAILBOXES * sizeof(struct ccb),
			  aha1542->ccb, aha1542->ccb_handle);
	FUNC0(dev, AHA1542_MAILBOXES * 2 * sizeof(struct mailbox),
			  aha1542->mb, aha1542->mb_handle);
	if (sh->irq)
		FUNC2(sh->irq, sh);
	if (sh->io_port && sh->n_io_port)
		FUNC3(sh->io_port, sh->n_io_port);
	FUNC4(sh);
	return 0;
}