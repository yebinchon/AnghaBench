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
struct s3fwrn5_i2c_phy {int /*<<< orphan*/  mode; int /*<<< orphan*/  ndev; int /*<<< orphan*/  i2c_dev; } ;
struct s3fwrn5_fw_header {size_t len; } ;
struct nci_ctrl_hdr {size_t plen; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NCI_CTRL_HDR_SIZE ; 
 size_t S3FWRN5_FW_HDR_SIZE ; 
 int /*<<< orphan*/  S3FWRN5_MODE_NCI ; 
 struct sk_buff* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,char*,size_t) ; 

__attribute__((used)) static int FUNC6(struct s3fwrn5_i2c_phy *phy)
{
	struct sk_buff *skb;
	size_t hdr_size;
	size_t data_len;
	char hdr[4];
	int ret;

	hdr_size = (phy->mode == S3FWRN5_MODE_NCI) ?
		NCI_CTRL_HDR_SIZE : S3FWRN5_FW_HDR_SIZE;
	ret = FUNC1(phy->i2c_dev, hdr, hdr_size);
	if (ret < 0)
		return ret;

	if (ret < hdr_size)
		return -EBADMSG;

	data_len = (phy->mode == S3FWRN5_MODE_NCI) ?
		((struct nci_ctrl_hdr *)hdr)->plen :
		((struct s3fwrn5_fw_header *)hdr)->len;

	skb = FUNC0(hdr_size + data_len, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	FUNC5(skb, hdr, hdr_size);

	if (data_len == 0)
		goto out;

	ret = FUNC1(phy->i2c_dev, FUNC4(skb, data_len), data_len);
	if (ret != data_len) {
		FUNC2(skb);
		return -EBADMSG;
	}

out:
	return FUNC3(phy->ndev, skb, phy->mode);
}