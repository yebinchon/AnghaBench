#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  reset_n_io; } ;
struct nfcmrvl_private {TYPE_2__ config; struct nci_dev* ndev; } ;
struct nci_dev {TYPE_1__* nfc_dev; } ;
struct TYPE_3__ {scalar_t__ fw_download_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfcmrvl_private*) ; 

void FUNC7(struct nfcmrvl_private *priv)
{
	struct nci_dev *ndev = priv->ndev;

	if (priv->ndev->nfc_dev->fw_download_in_progress)
		FUNC5(priv);

	FUNC6(priv);

	if (FUNC1(priv->config.reset_n_io))
		FUNC0(priv->config.reset_n_io);

	FUNC4(ndev);
	FUNC3(ndev);
	FUNC2(priv);
}