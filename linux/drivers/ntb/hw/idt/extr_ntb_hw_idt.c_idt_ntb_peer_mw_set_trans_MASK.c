#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct ntb_dev {int /*<<< orphan*/  pdev; } ;
struct idt_ntb_dev {int peer_cnt; int mw_cnt; int /*<<< orphan*/  lut_lock; TYPE_1__* peers; struct idt_mw_cfg* mws; } ;
struct idt_ntb_bar {int /*<<< orphan*/  limit; int /*<<< orphan*/  utbase; int /*<<< orphan*/  ltbase; int /*<<< orphan*/  setup; } ;
struct idt_mw_cfg {scalar_t__ size_max; scalar_t__ type; size_t bar; size_t idx; int /*<<< orphan*/  size_align; int /*<<< orphan*/  addr_align; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_4__ {struct idt_ntb_bar* bars; } ;
struct TYPE_3__ {size_t part; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARSETUP_TPART ; 
 int /*<<< orphan*/  BARSETUP_TYPE ; 
 int EINVAL ; 
 int IDT_LUTUDATA_VALID ; 
 scalar_t__ IDT_MW_DIR ; 
 int /*<<< orphan*/  IDT_NT_LUTLDATA ; 
 int /*<<< orphan*/  IDT_NT_LUTMDATA ; 
 int /*<<< orphan*/  IDT_NT_LUTOFFSET ; 
 int /*<<< orphan*/  IDT_NT_LUTUDATA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  LUTOFFSET_BAR ; 
 int /*<<< orphan*/  LUTOFFSET_INDEX ; 
 int /*<<< orphan*/  LUTUDATA_PART ; 
 int FUNC2 (int /*<<< orphan*/ ,int,size_t) ; 
 int FUNC3 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ ntdata_tbl ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idt_ntb_dev* FUNC8 (struct ntb_dev*) ; 

__attribute__((used)) static int FUNC9(struct ntb_dev *ntb, int pidx, int widx,
				     u64 addr, resource_size_t size)
{
	struct idt_ntb_dev *ndev = FUNC8(ntb);
	struct idt_mw_cfg *mw_cfg;
	u32 data = 0, lutoff = 0;

	if (pidx < 0 || ndev->peer_cnt <= pidx)
		return -EINVAL;

	if (widx < 0 || ndev->mw_cnt <= widx)
		return -EINVAL;

	/*
	 * Retrieve the memory window config to make sure the passed arguments
	 * fit it restrictions
	 */
	mw_cfg = &ndev->mws[widx];
	if (!FUNC0(addr, mw_cfg->addr_align))
		return -EINVAL;
	if (!FUNC0(size, mw_cfg->size_align) || size > mw_cfg->size_max)
		return -EINVAL;

	/* DIR and LUT based translations are initialized differently */
	if (mw_cfg->type == IDT_MW_DIR) {
		const struct idt_ntb_bar *bar = &ntdata_tbl.bars[mw_cfg->bar];
		u64 limit;
		/* Set destination partition of translation */
		data = FUNC3(ndev, bar->setup);
		data = FUNC2(BARSETUP_TPART, data, ndev->peers[pidx].part);
		FUNC4(ndev, bar->setup, data);
		/* Set translation base address */
		FUNC4(ndev, bar->ltbase, (u32)addr);
		FUNC4(ndev, bar->utbase, (u32)(addr >> 32));
		/* Set the custom BAR aperture limit */
		limit = FUNC5(ntb->pdev, mw_cfg->bar) + size;
		FUNC4(ndev, bar->limit, (u32)limit);
		if (FUNC1(BARSETUP_TYPE, data, 64))
			FUNC4(ndev, (bar + 1)->limit, (limit >> 32));
	} else {
		unsigned long irqflags;
		/* Initialize corresponding LUT entry */
		lutoff = FUNC2(LUTOFFSET_INDEX, 0, mw_cfg->idx) |
			 FUNC2(LUTOFFSET_BAR, 0, mw_cfg->bar);
		data = FUNC2(LUTUDATA_PART, 0, ndev->peers[pidx].part) |
			IDT_LUTUDATA_VALID;
		FUNC6(&ndev->lut_lock, irqflags);
		FUNC4(ndev, IDT_NT_LUTOFFSET, lutoff);
		FUNC4(ndev, IDT_NT_LUTLDATA, (u32)addr);
		FUNC4(ndev, IDT_NT_LUTMDATA, (u32)(addr >> 32));
		FUNC4(ndev, IDT_NT_LUTUDATA, data);
		FUNC7(&ndev->lut_lock, irqflags);
		/* Limit address isn't specified since size is fixed for LUT */
	}

	return 0;
}