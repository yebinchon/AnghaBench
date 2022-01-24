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
struct nfc_mei_phy {int /*<<< orphan*/  hdev; } ;
struct mei_cl_device {int dummy; } ;

/* Variables and functions */
 struct nfc_mei_phy* FUNC0 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_mei_phy*) ; 

__attribute__((used)) static int FUNC3(struct mei_cl_device *cldev)
{
	struct nfc_mei_phy *phy = FUNC0(cldev);

	FUNC1(phy->hdev);

	FUNC2(phy);

	return 0;
}