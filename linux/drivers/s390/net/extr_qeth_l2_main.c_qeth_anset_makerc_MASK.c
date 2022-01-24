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
typedef  int u16 ;
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(struct qeth_card *card, int pnso_rc, u16 response)
{
	int rc;

	if (pnso_rc == 0)
		switch (response) {
		case 0x0001:
			rc = 0;
			break;
		case 0x0004:
		case 0x0100:
		case 0x0106:
			rc = -EOPNOTSUPP;
			FUNC1(&card->gdev->dev,
				"Setting address notification failed\n");
			break;
		case 0x0107:
			rc = -EAGAIN;
			break;
		default:
			rc = -EIO;
		}
	else
		rc = -EIO;

	if (rc) {
		FUNC0(card, 2, "SBPp%04x", pnso_rc);
		FUNC0(card, 2, "SBPr%04x", response);
	}
	return rc;
}