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
typedef  int u8 ;
struct st21nfca_i2c_phy {scalar_t__ hard_fault; int /*<<< orphan*/  phy_lock; struct i2c_client* i2c_dev; } ;
struct sk_buff {int* data; int len; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sk_buff*) ; 
 int ST21NFCA_BYTE_STUFFING_MASK ; 
 int ST21NFCA_ESCAPE_BYTE_STUFFING ; 
 int ST21NFCA_HCI_LLC_MAX_SIZE ; 
 int ST21NFCA_SOF_EOF ; 
 int FUNC2 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/ * wait_tab ; 

__attribute__((used)) static int FUNC10(void *phy_id, struct sk_buff *skb)
{
	int r = -1, i, j;
	struct st21nfca_i2c_phy *phy = phy_id;
	struct i2c_client *client = phy->i2c_dev;
	u8 tmp[ST21NFCA_HCI_LLC_MAX_SIZE * 2];

	FUNC1("st21nfca_hci_i2c_write", skb);

	if (phy->hard_fault != 0)
		return phy->hard_fault;

	/*
	 * Compute CRC before byte stuffing computation on frame
	 * Note st21nfca_hci_add_len_crc is doing a byte stuffing
	 * on its own value
	 */
	FUNC8(skb);

	/* add ST21NFCA_SOF_EOF on tail */
	FUNC7(skb, ST21NFCA_SOF_EOF);
	/* add ST21NFCA_SOF_EOF on head */
	*(u8 *)FUNC6(skb, 1) = ST21NFCA_SOF_EOF;

	/*
	 * Compute byte stuffing
	 * if byte == ST21NFCA_SOF_EOF or ST21NFCA_ESCAPE_BYTE_STUFFING
	 * insert ST21NFCA_ESCAPE_BYTE_STUFFING (escape byte)
	 * xor byte with ST21NFCA_BYTE_STUFFING_MASK
	 */
	tmp[0] = skb->data[0];
	for (i = 1, j = 1; i < skb->len - 1; i++, j++) {
		if (skb->data[i] == ST21NFCA_SOF_EOF
		    || skb->data[i] == ST21NFCA_ESCAPE_BYTE_STUFFING) {
			tmp[j] = ST21NFCA_ESCAPE_BYTE_STUFFING;
			j++;
			tmp[j] = skb->data[i] ^ ST21NFCA_BYTE_STUFFING_MASK;
		} else {
			tmp[j] = skb->data[i];
		}
	}
	tmp[j] = skb->data[i];
	j++;

	/*
	 * Manage sleep mode
	 * Try 3 times to send data with delay between each
	 */
	FUNC4(&phy->phy_lock);
	for (i = 0; i < FUNC0(wait_tab) && r < 0; i++) {
		r = FUNC2(client, tmp, j);
		if (r < 0)
			FUNC3(wait_tab[i]);
	}
	FUNC5(&phy->phy_lock);

	if (r >= 0) {
		if (r != j)
			r = -EREMOTEIO;
		else
			r = 0;
	}

	FUNC9(skb);

	return r;
}