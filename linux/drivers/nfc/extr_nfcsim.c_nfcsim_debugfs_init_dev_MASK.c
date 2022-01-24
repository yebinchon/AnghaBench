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
typedef  int u32 ;
struct nfcsim {int /*<<< orphan*/  dropframe; TYPE_2__* nfc_digital_dev; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  devname ;
struct TYPE_4__ {TYPE_1__* nfc_dev; } ;
struct TYPE_3__ {int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfcsim*,char*,...) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfcsim_debugfs_root ; 
 int FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC4(struct nfcsim *dev)
{
	struct dentry *dev_dir;
	char devname[5]; /* nfcX\0 */
	u32 idx;
	int n;

	if (!nfcsim_debugfs_root) {
		FUNC0(dev, "nfcsim debugfs not initialized\n");
		return;
	}

	idx = dev->nfc_digital_dev->nfc_dev->idx;
	n = FUNC3(devname, sizeof(devname), "nfc%d", idx);
	if (n >= sizeof(devname)) {
		FUNC0(dev, "Could not compute dev name for dev %d\n", idx);
		return;
	}

	dev_dir = FUNC1(devname, nfcsim_debugfs_root);
	if (!dev_dir) {
		FUNC0(dev, "Could not create debugfs entries for nfc%d\n",
			   idx);
		return;
	}

	FUNC2("dropframe", 0664, dev_dir, &dev->dropframe);
}