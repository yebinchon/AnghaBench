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
struct nfcmrvl_private {TYPE_1__* if_ops; int /*<<< orphan*/  flags; } ;
struct nci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* nci_close ) (struct nfcmrvl_private*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFCMRVL_NCI_RUNNING ; 
 struct nfcmrvl_private* FUNC0 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nci_dev *ndev)
{
	struct nfcmrvl_private *priv = FUNC0(ndev);

	if (!FUNC2(NFCMRVL_NCI_RUNNING, &priv->flags))
		return 0;

	priv->if_ops->nci_close(priv);

	return 0;
}