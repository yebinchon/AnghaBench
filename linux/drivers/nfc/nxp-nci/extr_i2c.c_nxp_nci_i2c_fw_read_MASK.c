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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nxp_nci_i2c_phy {struct i2c_client* i2c_dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NXP_NCI_FW_CRC_LEN ; 
 size_t NXP_NCI_FW_FRAME_LEN_MASK ; 
 int NXP_NCI_FW_HDR_LEN ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct nxp_nci_i2c_phy *phy,
			       struct sk_buff **skb)
{
	struct i2c_client *client = phy->i2c_dev;
	u16 header;
	size_t frame_len;
	int r;

	r = FUNC2(client, (u8 *) &header, NXP_NCI_FW_HDR_LEN);
	if (r < 0) {
		goto fw_read_exit;
	} else if (r != NXP_NCI_FW_HDR_LEN) {
		FUNC4(&client->dev, "Incorrect header length: %u\n", r);
		r = -EBADMSG;
		goto fw_read_exit;
	}

	frame_len = (FUNC1(header) & NXP_NCI_FW_FRAME_LEN_MASK) +
		    NXP_NCI_FW_CRC_LEN;

	*skb = FUNC0(NXP_NCI_FW_HDR_LEN + frame_len, GFP_KERNEL);
	if (*skb == NULL) {
		r = -ENOMEM;
		goto fw_read_exit;
	}

	FUNC6(*skb, &header, NXP_NCI_FW_HDR_LEN);

	r = FUNC2(client, FUNC5(*skb, frame_len), frame_len);
	if (r != frame_len) {
		FUNC4(&client->dev,
			"Invalid frame length: %u (expected %zu)\n",
			r, frame_len);
		r = -EBADMSG;
		goto fw_read_exit_free_skb;
	}

	return 0;

fw_read_exit_free_skb:
	FUNC3(*skb);
fw_read_exit:
	return r;
}