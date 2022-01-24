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
typedef  int /*<<< orphan*/  u8 ;
struct scsi_lun {int dummy; } ;
struct scsi_device {int /*<<< orphan*/  lun; } ;
struct fcp_cmnd {int /*<<< orphan*/  fc_tm_flags; int /*<<< orphan*/  fc_lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_lun*) ; 

__attribute__((used)) static inline
void FUNC1(struct fcp_cmnd *fcp, struct scsi_device *dev, u8 tm_flags)
{
	FUNC0(dev->lun, (struct scsi_lun *) &fcp->fc_lun);
	fcp->fc_tm_flags = tm_flags;
}