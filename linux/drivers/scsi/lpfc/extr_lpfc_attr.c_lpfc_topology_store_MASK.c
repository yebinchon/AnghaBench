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
typedef  int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int cfg_topology; scalar_t__ cfg_link_speed; scalar_t__ sli_rev; int fc_topology_changed; int /*<<< orphan*/  brd_no; int /*<<< orphan*/  pport; TYPE_1__* pcidev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {scalar_t__ device; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 scalar_t__ LPFC_USER_LINK_SPEED_16G ; 
 scalar_t__ PCI_DEVICE_ID_LANCER_G6_FC ; 
 scalar_t__ PCI_DEVICE_ID_LANCER_G7_FC ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,char*,int*) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct Scsi_Host  *shost = FUNC0(dev);
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	int val = 0;
	int nolip = 0;
	const char *val_buf = buf;
	int err;
	uint32_t prev_val;

	if (!FUNC8(buf, "nolip ", FUNC7("nolip "))) {
		nolip = 1;
		val_buf = &buf[FUNC7("nolip ")];
	}

	if (!FUNC1(val_buf[0]))
		return -EINVAL;
	if (FUNC6(val_buf, "%i", &val) != 1)
		return -EINVAL;

	if (val >= 0 && val <= 6) {
		prev_val = phba->cfg_topology;
		if (phba->cfg_link_speed == LPFC_USER_LINK_SPEED_16G &&
			val == 4) {
			FUNC4(vport, KERN_ERR, LOG_INIT,
				"3113 Loop mode not supported at speed %d\n",
				val);
			return -EINVAL;
		}
		if ((phba->pcidev->device == PCI_DEVICE_ID_LANCER_G6_FC ||
		     phba->pcidev->device == PCI_DEVICE_ID_LANCER_G7_FC) &&
		    val == 4) {
			FUNC4(vport, KERN_ERR, LOG_INIT,
				"3114 Loop mode not supported\n");
			return -EINVAL;
		}
		phba->cfg_topology = val;
		if (nolip)
			return FUNC7(buf);

		FUNC4(vport, KERN_ERR, LOG_INIT,
			"3054 lpfc_topology changed from %d to %d\n",
			prev_val, val);
		if (prev_val != val && phba->sli_rev == LPFC_SLI_REV4)
			phba->fc_topology_changed = 1;
		err = FUNC2(FUNC5(phba->pport));
		if (err) {
			phba->cfg_topology = prev_val;
			return -EINVAL;
		} else
			return FUNC7(buf);
	}
	FUNC3(phba, KERN_ERR, LOG_INIT,
		"%d:0467 lpfc_topology attribute cannot be set to %d, "
		"allowed range is [0, 6]\n",
		phba->brd_no, val);
	return -EINVAL;
}