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
struct expansion_card {int /*<<< orphan*/  dev; } ;
struct ecard_id {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; } ;
struct NCR5380_hostdata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECARD_RES_MEMC ; 
 int ENOMEM ; 
 int FLAG_DMA_FIXUP ; 
 int FLAG_LATE_DMA_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int FUNC1 (struct Scsi_Host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  NO_IRQ ; 
 int /*<<< orphan*/  FUNC3 (struct expansion_card*) ; 
 int FUNC4 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct expansion_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct expansion_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oakscsi_template ; 
 TYPE_1__* FUNC9 (struct Scsi_Host*) ; 
 int FUNC10 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC13 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC14(struct expansion_card *ec, const struct ecard_id *id)
{
	struct Scsi_Host *host;
	int ret = -ENOMEM;

	ret = FUNC4(ec);
	if (ret)
		goto out;

	host = FUNC11(&oakscsi_template, sizeof(struct NCR5380_hostdata));
	if (!host) {
		ret = -ENOMEM;
		goto release;
	}

	FUNC9(host)->io = FUNC7(FUNC6(ec, ECARD_RES_MEMC),
	                         FUNC5(ec, ECARD_RES_MEMC));
	if (!FUNC9(host)->io) {
		ret = -ENOMEM;
		goto unreg;
	}

	host->irq = NO_IRQ;

	ret = FUNC1(host, FLAG_DMA_FIXUP | FLAG_LATE_DMA_SETUP);
	if (ret)
		goto out_unmap;

	FUNC2(host);

	ret = FUNC10(host, &ec->dev);
	if (ret)
		goto out_exit;

	FUNC13(host);
	goto out;

 out_exit:
	FUNC0(host);
 out_unmap:
	FUNC8(FUNC9(host)->io);
 unreg:
	FUNC12(host);
 release:
	FUNC3(ec);
 out:
	return ret;
}