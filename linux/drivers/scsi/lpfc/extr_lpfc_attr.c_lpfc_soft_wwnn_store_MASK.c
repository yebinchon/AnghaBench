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
typedef  int /*<<< orphan*/  u8 ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int /*<<< orphan*/  brd_no; TYPE_1__* pcidev; int /*<<< orphan*/  cfg_soft_wwnn; int /*<<< orphan*/  soft_wwn_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int WWN_SZ ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
	unsigned int cnt = count;
	u8 wwnn[WWN_SZ];
	int rc;

	/* count may include a LF at end of string */
	if (buf[cnt-1] == '\n')
		cnt--;

	if (!phba->soft_wwn_enable)
		return -EINVAL;

	rc = FUNC2(buf, cnt, wwnn);
	if (rc) {
		/* Allow wwnn to be set many times, as long as the enable
		 * is set. However, once the wwpn is set, everything locks.
		 */
		return rc;
	}

	phba->cfg_soft_wwnn = FUNC3(wwnn);

	FUNC1(KERN_NOTICE, &phba->pcidev->dev,
		   "lpfc%d: soft_wwnn set. Value will take effect upon "
		   "setting of the soft_wwpn\n", phba->brd_no);

	return count;
}