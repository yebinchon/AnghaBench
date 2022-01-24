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
struct sclp_chp_info {int /*<<< orphan*/  configured; int /*<<< orphan*/  standby; int /*<<< orphan*/  recognized; } ;
struct TYPE_2__ {int length; int response_code; } ;
struct chp_info_sccb {int /*<<< orphan*/  configured; int /*<<< orphan*/  standby; int /*<<< orphan*/  recognized; TYPE_1__ header; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  SCLP_CHP_INFO_MASK_SIZE ; 
 int /*<<< orphan*/  SCLP_CMDW_READ_CHPATH_INFORMATION ; 
 int /*<<< orphan*/  SCLP_HAS_CHP_INFO ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct chp_info_sccb*) ; 

int FUNC5(struct sclp_chp_info *info)
{
	struct chp_info_sccb *sccb;
	int rc;

	if (!SCLP_HAS_CHP_INFO)
		return -EOPNOTSUPP;
	/* Prepare sccb. */
	sccb = (struct chp_info_sccb *) FUNC1(GFP_KERNEL | GFP_DMA);
	if (!sccb)
		return -ENOMEM;
	sccb->header.length = sizeof(*sccb);
	rc = FUNC4(SCLP_CMDW_READ_CHPATH_INFORMATION, sccb);
	if (rc)
		goto out;
	if (sccb->header.response_code != 0x0010) {
		FUNC3("read channel-path info failed (response=0x%04x)\n",
			sccb->header.response_code);
		rc = -EIO;
		goto out;
	}
	FUNC2(info->recognized, sccb->recognized, SCLP_CHP_INFO_MASK_SIZE);
	FUNC2(info->standby, sccb->standby, SCLP_CHP_INFO_MASK_SIZE);
	FUNC2(info->configured, sccb->configured, SCLP_CHP_INFO_MASK_SIZE);
out:
	FUNC0((unsigned long) sccb);
	return rc;
}