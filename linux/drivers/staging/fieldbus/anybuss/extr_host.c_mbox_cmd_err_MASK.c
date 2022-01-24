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
typedef  int u16 ;
struct anybus_mbox_hdr {int /*<<< orphan*/  info; } ;
struct mbox_priv {int* msg; int msg_in_sz; struct anybus_mbox_hdr hdr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EIO ; 
 int /*<<< orphan*/ * EMSGS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct anybus_mbox_hdr*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct mbox_priv *mpriv)
{
	int i;
	u8 ecode;
	struct anybus_mbox_hdr *hdr = &mpriv->hdr;
	u16 info = FUNC1(hdr->info);
	u8 *phdr = (u8 *)hdr;
	u8 *pmsg = mpriv->msg;

	if (!(info & 0x8000))
		return 0;
	ecode = (info >> 8) & 0x0F;
	FUNC2(dev, "mailbox command failed:");
	if (ecode == 0x0F)
		FUNC4(dev, hdr);
	else if (ecode < FUNC0(EMSGS))
		FUNC2(dev, "   Error code: %s (0x%02X)",
			EMSGS[ecode], ecode);
	else
		FUNC2(dev, "   Error code: 0x%02X\n", ecode);
	FUNC2(dev, "Failed command:");
	FUNC2(dev, "Message Header:");
	for (i = 0; i < sizeof(mpriv->hdr); i += 2)
		FUNC2(dev, "%02X%02X", phdr[i], phdr[i + 1]);
	FUNC2(dev, "Message Data:");
	for (i = 0; i < mpriv->msg_in_sz; i += 2)
		FUNC2(dev, "%02X%02X", pmsg[i], pmsg[i + 1]);
	FUNC2(dev, "Stack dump:");
	FUNC3();
	return -EIO;
}