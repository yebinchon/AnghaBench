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
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct nxp_nci_fw_info {size_t frame_size; size_t written; size_t data; } ;
struct nxp_nci_info {size_t max_payload; int /*<<< orphan*/  phy_id; TYPE_1__* phy_ops; int /*<<< orphan*/  ndev; struct nxp_nci_fw_info fw_info; } ;
struct TYPE_2__ {int (* write ) (int /*<<< orphan*/ ,struct sk_buff*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NXP_NCI_FW_CHUNK_FLAG ; 
 size_t NXP_NCI_FW_CRC_LEN ; 
 size_t NXP_NCI_FW_FRAME_LEN_MASK ; 
 size_t NXP_NCI_FW_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,size_t,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct nxp_nci_info *info)
{
	struct nxp_nci_fw_info *fw_info = &info->fw_info;
	u16 header, crc;
	struct sk_buff *skb;
	size_t chunk_len;
	size_t remaining_len;
	int r;

	skb = FUNC1(info->ndev, info->max_payload, GFP_KERNEL);
	if (!skb) {
		r = -ENOMEM;
		goto chunk_exit;
	}

	chunk_len = info->max_payload - NXP_NCI_FW_HDR_LEN - NXP_NCI_FW_CRC_LEN;
	remaining_len = fw_info->frame_size - fw_info->written;

	if (remaining_len > chunk_len) {
		header = NXP_NCI_FW_CHUNK_FLAG;
	} else {
		chunk_len = remaining_len;
		header = 0x0000;
	}

	header |= chunk_len & NXP_NCI_FW_FRAME_LEN_MASK;
	FUNC3(header, FUNC4(skb, NXP_NCI_FW_HDR_LEN));

	FUNC5(skb, fw_info->data + fw_info->written, chunk_len);

	crc = FUNC2(skb->data, chunk_len + NXP_NCI_FW_HDR_LEN);
	FUNC3(crc, FUNC4(skb, NXP_NCI_FW_CRC_LEN));

	r = info->phy_ops->write(info->phy_id, skb);
	if (r >= 0)
		r = chunk_len;

	FUNC0(skb);

chunk_exit:
	return r;
}