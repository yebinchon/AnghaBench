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
struct snic_req_info {int /*<<< orphan*/  tm_tag; } ;
struct snic {int dummy; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNIC_ITMF_LUN_RESET ; 
 int /*<<< orphan*/  SNIC_TAG_DEV_RST ; 
 int FUNC0 (struct snic*,struct snic_req_info*,struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct snic *snic,
		  struct snic_req_info *rqi,
		  struct scsi_cmnd *sc)
{
	/* Add special tag for device reset */
	rqi->tm_tag |= SNIC_TAG_DEV_RST;

	return FUNC0(snic, rqi, sc, SNIC_ITMF_LUN_RESET);
}