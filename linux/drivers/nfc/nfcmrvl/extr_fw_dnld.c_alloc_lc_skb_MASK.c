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
typedef  scalar_t__ uint8_t ;
struct sk_buff {int dummy; } ;
struct nfcmrvl_private {int /*<<< orphan*/  ndev; } ;
struct nci_data_hdr {scalar_t__ plen; scalar_t__ rfu; int /*<<< orphan*/  conn_id; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NCI_CORE_LC_CONNID_PROP_FW_DL ; 
 scalar_t__ NCI_DATA_HDR_SIZE ; 
 int /*<<< orphan*/  NCI_MT_DATA_PKT ; 
 int /*<<< orphan*/  NCI_PBF_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct nci_data_hdr* FUNC4 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct nfcmrvl_private *priv, uint8_t plen)
{
	struct sk_buff *skb;
	struct nci_data_hdr *hdr;

	skb = FUNC2(priv->ndev, (NCI_DATA_HDR_SIZE + plen), GFP_KERNEL);
	if (!skb) {
		FUNC3("no memory for data\n");
		return NULL;
	}

	hdr = FUNC4(skb, NCI_DATA_HDR_SIZE);
	hdr->conn_id = NCI_CORE_LC_CONNID_PROP_FW_DL;
	hdr->rfu = 0;
	hdr->plen = plen;

	FUNC0((__u8 *)hdr, NCI_MT_DATA_PKT);
	FUNC1((__u8 *)hdr, NCI_PBF_LAST);

	return skb;
}