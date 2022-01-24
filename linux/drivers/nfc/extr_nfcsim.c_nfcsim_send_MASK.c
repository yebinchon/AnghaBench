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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nfcsim {int /*<<< orphan*/  send_work; int /*<<< orphan*/  mode; int /*<<< orphan*/  rf_tech; int /*<<< orphan*/  link_out; scalar_t__ dropframe; int /*<<< orphan*/  recv_work; void* arg; int /*<<< orphan*/  cb; int /*<<< orphan*/  recv_timeout; int /*<<< orphan*/  up; } ;
struct nfc_digital_dev {int dummy; } ;
typedef  int /*<<< orphan*/  nfc_digital_cmd_complete_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct nfcsim*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nfcsim*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct nfcsim* FUNC5 (struct nfc_digital_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct nfc_digital_dev *ddev, struct sk_buff *skb,
		       u16 timeout, nfc_digital_cmd_complete_t cb, void *arg)
{
	struct nfcsim *dev = FUNC5(ddev);
	u8 delay;

	if (!dev->up) {
		FUNC1(dev, "Device is down\n");
		return -ENODEV;
	}

	dev->recv_timeout = timeout;
	dev->cb = cb;
	dev->arg = arg;

	FUNC8(&dev->recv_work);

	if (dev->dropframe) {
		FUNC0(dev, "dropping frame (out of %d)\n", dev->dropframe);
		FUNC2(skb);
		dev->dropframe--;

		return 0;
	}

	if (skb) {
		FUNC6(dev->link_out, skb, dev->rf_tech,
				    dev->mode);

		/* Add random delay (between 3 and 10 ms) before sending data */
		FUNC3(&delay, 1);
		delay = 3 + (delay & 0x07);

		FUNC7(&dev->send_work, FUNC4(delay));
	}

	return 0;
}