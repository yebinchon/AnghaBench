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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qtnf_pearl_fw_hdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; } ;
struct qtnf_pcie_pearl_state {TYPE_2__* bda; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  bda_ep_state; int /*<<< orphan*/  bda_rc_state; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QTN_EP_FW_RETRY ; 
 int /*<<< orphan*/  QTN_EP_FW_SYNC ; 
 int /*<<< orphan*/  QTN_FW_DL_TIMEOUT_MS ; 
 int QTN_PCIE_FW_BUFSZ ; 
 int QTN_PCIE_FW_DLMASK ; 
 int /*<<< orphan*/  QTN_RC_FW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qtnf_pcie_pearl_state*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct qtnf_pcie_pearl_state *ps, const u8 *fw, u32 fw_size)
{
	int blk_size = QTN_PCIE_FW_BUFSZ - sizeof(struct qtnf_pearl_fw_hdr);
	int blk_count = fw_size / blk_size + ((fw_size % blk_size) ? 1 : 0);
	const u8 *pblk = fw;
	int threshold = 0;
	int blk = 0;
	int len;

	FUNC0("FW upload started: fw_addr=0x%p size=%d\n", fw, fw_size);

	while (blk < blk_count) {
		if (++threshold > 10000) {
			FUNC1("FW upload failed: too many retries\n");
			return -ETIMEDOUT;
		}

		len = FUNC4(ps->base.pdev, fw_size, blk, pblk, fw);
		if (len <= 0)
			continue;

		if (!((blk + 1) & QTN_PCIE_FW_DLMASK) ||
		    (blk == (blk_count - 1))) {
			FUNC8(&ps->bda->bda_rc_state,
				       QTN_RC_FW_SYNC);
			if (FUNC7(&ps->bda->bda_ep_state,
					    QTN_EP_FW_SYNC,
					    QTN_FW_DL_TIMEOUT_MS)) {
				FUNC1("FW upload failed: SYNC timed out\n");
				return -ETIMEDOUT;
			}

			FUNC3(&ps->bda->bda_ep_state,
					 QTN_EP_FW_SYNC);

			if (FUNC5(&ps->bda->bda_ep_state,
					  QTN_EP_FW_RETRY)) {
				if (blk == (blk_count - 1)) {
					int last_round =
						blk_count & QTN_PCIE_FW_DLMASK;
					blk -= last_round;
					pblk -= ((last_round - 1) *
						blk_size + len);
				} else {
					blk -= QTN_PCIE_FW_DLMASK;
					pblk -= QTN_PCIE_FW_DLMASK * blk_size;
				}

				FUNC3(&ps->bda->bda_ep_state,
						 QTN_EP_FW_RETRY);

				FUNC2("FW upload retry: block #%d\n", blk);
				continue;
			}

			FUNC6(ps);
		}

		pblk += len;
		blk++;
	}

	FUNC0("FW upload completed: totally sent %d blocks\n", blk);
	return 0;
}