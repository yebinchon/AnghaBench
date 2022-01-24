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
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  LOOPBACK ; 
 int /*<<< orphan*/  NFC_ATTR_VENDOR_DATA ; 
 int /*<<< orphan*/  ST_NCI_VENDOR_OUI ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nci_dev*,void*,size_t,struct sk_buff**) ; 
 struct nci_dev* FUNC2 (struct nfc_dev*) ; 
 struct sk_buff* FUNC3 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nfc_dev *dev, void *data,
			   size_t data_len)
{
	int r;
	struct sk_buff *msg, *skb;
	struct nci_dev *ndev = FUNC2(dev);

	if (data_len <= 0)
		return -EPROTO;

	r = FUNC1(ndev, data, data_len, &skb);
	if (r < 0)
		return r;

	msg = FUNC3(dev, ST_NCI_VENDOR_OUI,
					     LOOPBACK, skb->len);
	if (!msg) {
		r = -ENOMEM;
		goto free_skb;
	}

	if (FUNC5(msg, NFC_ATTR_VENDOR_DATA, skb->len, skb->data)) {
		FUNC0(msg);
		r = -ENOBUFS;
		goto free_skb;
	}

	r = FUNC4(msg);
free_skb:
	FUNC0(skb);
	return r;
}