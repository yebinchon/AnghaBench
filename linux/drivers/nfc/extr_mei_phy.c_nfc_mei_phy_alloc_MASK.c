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
struct nfc_mei_phy {int /*<<< orphan*/  send_wq; struct mei_cl_device* cldev; } ;
struct mei_cl_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfc_mei_phy* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_cl_device*,struct nfc_mei_phy*) ; 

struct nfc_mei_phy *FUNC3(struct mei_cl_device *cldev)
{
	struct nfc_mei_phy *phy;

	phy = FUNC1(sizeof(struct nfc_mei_phy), GFP_KERNEL);
	if (!phy)
		return NULL;

	phy->cldev = cldev;
	FUNC0(&phy->send_wq);
	FUNC2(cldev, phy);

	return phy;
}