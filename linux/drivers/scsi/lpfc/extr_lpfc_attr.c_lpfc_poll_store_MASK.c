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
typedef  int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_poll; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  HCregaddr; int /*<<< orphan*/  fcp_poll_timer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int DISABLE_FCP_RING_INT ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENABLE_FCP_RING_POLLING ; 
 int HC_R0INT_ENA ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int LPFC_FCP_RING ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct Scsi_Host  *shost = FUNC0(dev);
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	uint32_t creg_val;
	uint32_t old_val;
	int val=0;

	if (!FUNC2(buf[0]))
		return -EINVAL;

	if (FUNC9(buf, "%i", &val) != 1)
		return -EINVAL;

	if ((val & 0x3) != val)
		return -EINVAL;

	if (phba->sli_rev == LPFC_SLI_REV4)
		val = 0;

	FUNC4(vport, KERN_ERR, LOG_INIT,
		"3051 lpfc_poll changed from %d to %d\n",
		phba->cfg_poll, val);

	FUNC7(&phba->hbalock);

	old_val = phba->cfg_poll;

	if (val & ENABLE_FCP_RING_POLLING) {
		if ((val & DISABLE_FCP_RING_INT) &&
		    !(old_val & DISABLE_FCP_RING_INT)) {
			if (FUNC5(phba->HCregaddr, &creg_val)) {
				FUNC8(&phba->hbalock);
				return -EINVAL;
			}
			creg_val &= ~(HC_R0INT_ENA << LPFC_FCP_RING);
			FUNC11(creg_val, phba->HCregaddr);
			FUNC6(phba->HCregaddr); /* flush */

			FUNC3(phba);
		}
	} else if (val != 0x0) {
		FUNC8(&phba->hbalock);
		return -EINVAL;
	}

	if (!(val & DISABLE_FCP_RING_INT) &&
	    (old_val & DISABLE_FCP_RING_INT))
	{
		FUNC8(&phba->hbalock);
		FUNC1(&phba->fcp_poll_timer);
		FUNC7(&phba->hbalock);
		if (FUNC5(phba->HCregaddr, &creg_val)) {
			FUNC8(&phba->hbalock);
			return -EINVAL;
		}
		creg_val |= (HC_R0INT_ENA << LPFC_FCP_RING);
		FUNC11(creg_val, phba->HCregaddr);
		FUNC6(phba->HCregaddr); /* flush */
	}

	phba->cfg_poll = val;

	FUNC8(&phba->hbalock);

	return FUNC10(buf);
}