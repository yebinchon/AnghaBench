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
typedef  int u32 ;
struct qm_ecir2 {void* info; } ;
struct qm_ecir {void* info; } ;
struct qm_eadr {void* info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {char* txt; int addr_mask; int /*<<< orphan*/  bits; } ;

/* Variables and functions */
 int FQID_ECSR_ERR ; 
 int PORTAL_ECSR_ERR ; 
 int QMAN_REV30 ; 
 int QM_EIRQ_IECE ; 
 int QM_EIRQ_MBEI ; 
 int QM_EIRQ_SBEI ; 
 int /*<<< orphan*/  REG_EADR ; 
 int /*<<< orphan*/  REG_ECIR ; 
 int /*<<< orphan*/  REG_ECIR2 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,...) ; 
 TYPE_1__* error_mdata ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qm_eadr*) ; 
 int FUNC4 (struct qm_eadr*) ; 
 int FUNC5 (struct qm_eadr*) ; 
 int FUNC6 (struct qm_eadr*) ; 
 int FUNC7 (struct qm_ecir2*) ; 
 scalar_t__ FUNC8 (struct qm_ecir2*) ; 
 int /*<<< orphan*/  FUNC9 (struct qm_ecir*) ; 
 int FUNC10 (struct qm_ecir*) ; 
 scalar_t__ FUNC11 (struct qm_ecir*) ; 
 int qman_ip_rev ; 

__attribute__((used)) static void FUNC12(struct device *dev, u32 isr_val,
				      u32 ecsr_val)
{
	struct qm_ecir ecir_val;
	struct qm_eadr eadr_val;
	int memid;

	ecir_val.info = FUNC2(REG_ECIR);
	/* Is portal info valid */
	if ((qman_ip_rev & 0xFF00) >= QMAN_REV30) {
		struct qm_ecir2 ecir2_val;

		ecir2_val.info = FUNC2(REG_ECIR2);
		if (ecsr_val & PORTAL_ECSR_ERR) {
			FUNC0(dev, "ErrInt: %s id %d\n",
				 FUNC8(&ecir2_val) ? "DCP" : "SWP",
				 FUNC7(&ecir2_val));
		}
		if (ecsr_val & (FQID_ECSR_ERR | QM_EIRQ_IECE))
			FUNC0(dev, "ErrInt: ecir.fqid 0x%x\n",
				 FUNC9(&ecir_val));

		if (ecsr_val & (QM_EIRQ_SBEI|QM_EIRQ_MBEI)) {
			eadr_val.info = FUNC2(REG_EADR);
			memid = FUNC6(&eadr_val);
			FUNC0(dev, "ErrInt: EADR Memory: %s, 0x%x\n",
				 error_mdata[memid].txt,
				 error_mdata[memid].addr_mask
					& FUNC5(&eadr_val));
			FUNC1(dev, error_mdata[memid].bits);
		}
	} else {
		if (ecsr_val & PORTAL_ECSR_ERR) {
			FUNC0(dev, "ErrInt: %s id %d\n",
				 FUNC11(&ecir_val) ? "DCP" : "SWP",
				 FUNC10(&ecir_val));
		}
		if (ecsr_val & FQID_ECSR_ERR)
			FUNC0(dev, "ErrInt: ecir.fqid 0x%x\n",
				 FUNC9(&ecir_val));

		if (ecsr_val & (QM_EIRQ_SBEI|QM_EIRQ_MBEI)) {
			eadr_val.info = FUNC2(REG_EADR);
			memid = FUNC4(&eadr_val);
			FUNC0(dev, "ErrInt: EADR Memory: %s, 0x%x\n",
				 error_mdata[memid].txt,
				 error_mdata[memid].addr_mask
					& FUNC3(&eadr_val));
			FUNC1(dev, error_mdata[memid].bits);
		}
	}
}