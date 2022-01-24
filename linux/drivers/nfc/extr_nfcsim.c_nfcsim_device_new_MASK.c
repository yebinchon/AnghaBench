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
struct nfcsim_link {int dummy; } ;
struct nfcsim {int /*<<< orphan*/  nfc_digital_dev; struct nfcsim_link* link_out; struct nfcsim_link* link_in; int /*<<< orphan*/  recv_work; int /*<<< orphan*/  send_work; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfcsim* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFCSIM_CAPABILITIES ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct nfcsim*) ; 
 struct nfcsim* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct nfcsim*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfcsim*) ; 
 int /*<<< orphan*/  nfcsim_digital_ops ; 
 int /*<<< orphan*/  nfcsim_recv_wq ; 
 int /*<<< orphan*/  nfcsim_send_wq ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static struct nfcsim *FUNC11(struct nfcsim_link *link_in,
					struct nfcsim_link *link_out)
{
	struct nfcsim *dev;
	int rc;

	dev = FUNC4(sizeof(struct nfcsim), GFP_KERNEL);
	if (!dev)
		return FUNC0(-ENOMEM);

	FUNC1(&dev->send_work, nfcsim_send_wq);
	FUNC2(&dev->recv_work, nfcsim_recv_wq);

	dev->nfc_digital_dev =
			FUNC5(&nfcsim_digital_ops,
						    NFC_PROTO_NFC_DEP_MASK,
						    NFCSIM_CAPABILITIES,
						    0, 0);
	if (!dev->nfc_digital_dev) {
		FUNC3(dev);
		return FUNC0(-ENOMEM);
	}

	FUNC8(dev->nfc_digital_dev, dev);

	dev->link_in = link_in;
	dev->link_out = link_out;

	rc = FUNC7(dev->nfc_digital_dev);
	if (rc) {
		FUNC10("Could not register digital device (%d)\n", rc);
		FUNC6(dev->nfc_digital_dev);
		FUNC3(dev);

		return FUNC0(rc);
	}

	FUNC9(dev);

	return dev;
}