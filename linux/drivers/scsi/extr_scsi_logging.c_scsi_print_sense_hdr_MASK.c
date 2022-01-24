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
struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_device const*,char const*,int,struct scsi_sense_hdr const*) ; 

void
FUNC1(const struct scsi_device *sdev, const char *name,
		     const struct scsi_sense_hdr *sshdr)
{
	FUNC0(sdev, name, -1, sshdr);
}