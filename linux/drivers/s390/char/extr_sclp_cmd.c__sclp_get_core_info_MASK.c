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
struct sclp_core_info {int dummy; } ;
struct TYPE_2__ {int length; int response_code; } ;
struct read_cpu_info_sccb {TYPE_1__ header; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  SCLP_CMDW_READ_CPU_INFO ; 
 int /*<<< orphan*/  SCLP_HAS_CPU_INFO ; 
 int /*<<< orphan*/  SCLP_QUEUE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sclp_core_info*,struct read_cpu_info_sccb*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct read_cpu_info_sccb*,int /*<<< orphan*/ ) ; 

int FUNC5(struct sclp_core_info *info)
{
	int rc;
	struct read_cpu_info_sccb *sccb;

	if (!SCLP_HAS_CPU_INFO)
		return -EOPNOTSUPP;
	sccb = (void *) FUNC1(GFP_KERNEL | GFP_DMA);
	if (!sccb)
		return -ENOMEM;
	sccb->header.length = sizeof(*sccb);
	rc = FUNC4(SCLP_CMDW_READ_CPU_INFO, sccb,
				       SCLP_QUEUE_INTERVAL);
	if (rc)
		goto out;
	if (sccb->header.response_code != 0x0010) {
		FUNC2("readcpuinfo failed (response=0x%04x)\n",
			sccb->header.response_code);
		rc = -EIO;
		goto out;
	}
	FUNC3(info, sccb);
out:
	FUNC0((unsigned long) sccb);
	return rc;
}