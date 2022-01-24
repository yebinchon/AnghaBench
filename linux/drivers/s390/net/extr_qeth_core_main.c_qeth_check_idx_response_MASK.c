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
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DBF_CTRL_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card,
	unsigned char *buffer)
{
	FUNC2(CTRL, 2, buffer, QETH_DBF_CTRL_LEN);
	if ((buffer[2] & 0xc0) == 0xc0) {
		FUNC3(2, "received an IDX TERMINATE with cause code %#04x\n",
				 buffer[4]);
		FUNC0(card, 2, "ckidxres");
		FUNC0(card, 2, " idxterm");
		FUNC1(card, 2, "  rc%d", -EIO);
		if (buffer[4] == 0xf6) {
			FUNC4(&card->gdev->dev,
			"The qeth device is not configured "
			"for the OSI layer required by z/VM\n");
			return -EPERM;
		}
		return -EIO;
	}
	return 0;
}