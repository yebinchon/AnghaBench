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
struct scsi_device {struct Scsi_Host* host; } ;
struct Scsi_Host {int cmd_per_lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct scsi_device *sdev, int qdepth)
{
	struct Scsi_Host *shost = sdev->host;
	int max_depth = shost->cmd_per_lun;

	return FUNC1(sdev, FUNC0(max_depth, qdepth));
}