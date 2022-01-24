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
struct macio_dev {int dummy; } ;
struct fsc_state {int /*<<< orphan*/  dma_cmd_space; scalar_t__ dma; scalar_t__ regs; int /*<<< orphan*/  intr; struct Scsi_Host* host; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fsc_state*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC7(struct macio_dev *mdev)
{
	struct fsc_state *fp = (struct fsc_state *)FUNC3(mdev);
	struct Scsi_Host *host = fp->host;

	FUNC6(host);

	FUNC0(fp->intr, fp);

	if (fp->regs)
		FUNC1(fp->regs);
	if (fp->dma)
		FUNC1(fp->dma);
	FUNC2(fp->dma_cmd_space);

	FUNC5(host);

	FUNC4(mdev);

	return 0;
}