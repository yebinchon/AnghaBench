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
struct sk_buff {int dummy; } ;
struct cxgbit_iso_info {int flags; int len; int /*<<< orphan*/  burst_len; int /*<<< orphan*/  mpdu; } ;
struct cpl_tx_data_iso {scalar_t__ reserved3; void* buffer_offset; void* datasn_offset; void* reserved2_seglen_offset; void* len; void* burst_size; int /*<<< orphan*/  mpdu; scalar_t__ ahs_len; void* op_to_scsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_TX_DATA_ISO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (int) ; 
 int CXGBIT_ISO_FSLICE ; 
 int CXGBIT_ISO_LSLICE ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 struct cpl_tx_data_iso* FUNC10 (struct sk_buff*,int) ; 
 unsigned int FUNC11 (struct sk_buff*) ; 
 void* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14(struct sk_buff *skb, struct cxgbit_iso_info *iso_info)
{
	struct cpl_tx_data_iso *cpl;
	unsigned int submode = FUNC11(skb);
	unsigned int fslice = !!(iso_info->flags & CXGBIT_ISO_FSLICE);
	unsigned int lslice = !!(iso_info->flags & CXGBIT_ISO_LSLICE);

	cpl = FUNC10(skb, sizeof(*cpl));

	cpl->op_to_scsi = FUNC12(FUNC5(CPL_TX_DATA_ISO) |
			FUNC1(fslice) |
			FUNC4(lslice) |
			FUNC0(0) |
			FUNC2(submode & 1) |
			FUNC6(((submode >> 1) & 1)) |
			FUNC3(0) |
			FUNC7(2));

	cpl->ahs_len = 0;
	cpl->mpdu = FUNC13(FUNC8(iso_info->mpdu, 4));
	cpl->burst_size = FUNC12(FUNC8(iso_info->burst_len, 4));
	cpl->len = FUNC12(iso_info->len);
	cpl->reserved2_seglen_offset = FUNC12(0);
	cpl->datasn_offset = FUNC12(0);
	cpl->buffer_offset = FUNC12(0);
	cpl->reserved3 = 0;

	FUNC9(skb, sizeof(*cpl));
}