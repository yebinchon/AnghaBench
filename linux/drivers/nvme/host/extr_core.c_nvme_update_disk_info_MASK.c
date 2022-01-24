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
typedef  int u32 ;
struct nvme_ns {int lba_shift; int /*<<< orphan*/  ms; int /*<<< orphan*/  pi_type; TYPE_3__* ctrl; int /*<<< orphan*/  ext; } ;
struct nvme_id_ns {scalar_t__ nabo; int nsfeat; int nsattr; scalar_t__ nows; scalar_t__ npwg; scalar_t__ nawupf; int /*<<< orphan*/  nsze; } ;
struct gendisk {int /*<<< orphan*/  queue; } ;
typedef  int sector_t ;
struct TYPE_6__ {TYPE_2__* ops; TYPE_1__* subsys; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int awupf; } ;

/* Variables and functions */
 int NVME_F_METADATA_SUPPORTED ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gendisk*,struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC12 (struct gendisk*,struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC13 (struct gendisk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC15 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gendisk*,int) ; 

__attribute__((used)) static void FUNC17(struct gendisk *disk,
		struct nvme_ns *ns, struct nvme_id_ns *id)
{
	sector_t capacity = FUNC9(id->nsze) << (ns->lba_shift - 9);
	unsigned short bs = 1 << ns->lba_shift;
	u32 atomic_bs, phys_bs, io_opt;

	if (ns->lba_shift > PAGE_SHIFT) {
		/* unsupported block size, set capacity to 0 later */
		bs = (1 << 9);
	}
	FUNC2(disk->queue);
	FUNC1(disk);

	if (id->nabo == 0) {
		/*
		 * Bit 1 indicates whether NAWUPF is defined for this namespace
		 * and whether it should be used instead of AWUPF. If NAWUPF ==
		 * 0 then AWUPF must be used instead.
		 */
		if (id->nsfeat & (1 << 1) && id->nawupf)
			atomic_bs = (1 + FUNC8(id->nawupf)) * bs;
		else
			atomic_bs = (1 + ns->ctrl->subsys->awupf) * bs;
	} else {
		atomic_bs = bs;
	}
	phys_bs = bs;
	io_opt = bs;
	if (id->nsfeat & (1 << 4)) {
		/* NPWG = Namespace Preferred Write Granularity */
		phys_bs *= 1 + FUNC8(id->npwg);
		/* NOWS = Namespace Optimal Write Size */
		io_opt *= 1 + FUNC8(id->nows);
	}

	FUNC6(disk->queue, bs);
	/*
	 * Linux filesystems assume writing a single physical block is
	 * an atomic operation. Hence limit the physical block size to the
	 * value of the Atomic Write Unit Power Fail parameter.
	 */
	FUNC7(disk->queue, FUNC10(phys_bs, atomic_bs));
	FUNC4(disk->queue, phys_bs);
	FUNC5(disk->queue, io_opt);

	if (ns->ms && !ns->ext &&
	    (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))
		FUNC13(disk, ns->ms, ns->pi_type);
	if ((ns->ms && !FUNC14(ns) && !FUNC0(disk)) ||
	    ns->lba_shift > PAGE_SHIFT)
		capacity = 0;

	FUNC15(disk, capacity);

	FUNC11(disk, ns);
	FUNC12(disk, ns);

	if (id->nsattr & (1 << 0))
		FUNC16(disk, true);
	else
		FUNC16(disk, false);

	FUNC3(disk->queue);
}