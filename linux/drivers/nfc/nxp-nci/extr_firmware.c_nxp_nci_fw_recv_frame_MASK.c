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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct nxp_nci_fw_info {int /*<<< orphan*/  work; scalar_t__ fw; int /*<<< orphan*/  cmd_result; int /*<<< orphan*/  cmd_completion; } ;
struct nxp_nci_info {struct nxp_nci_fw_info fw_info; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADMSG ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  NXP_NCI_FW_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct nxp_nci_info* FUNC2 (struct nci_dev*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC7(struct nci_dev *ndev, struct sk_buff *skb)
{
	struct nxp_nci_info *info = FUNC2(ndev);
	struct nxp_nci_fw_info *fw_info = &info->fw_info;

	FUNC0(&fw_info->cmd_completion);

	if (skb) {
		if (FUNC3(skb) != 0x00)
			fw_info->cmd_result = -EBADMSG;
		else
			fw_info->cmd_result = FUNC4(*(u8 *)FUNC6(skb, NXP_NCI_FW_HDR_LEN));
		FUNC1(skb);
	} else {
		fw_info->cmd_result = -EIO;
	}

	if (fw_info->fw)
		FUNC5(&fw_info->work);
}