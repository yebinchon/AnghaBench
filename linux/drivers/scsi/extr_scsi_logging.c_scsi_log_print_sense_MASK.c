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
 int /*<<< orphan*/  FUNC0 (struct scsi_device const*,char const*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device const*,char const*,int,struct scsi_sense_hdr*) ; 
 scalar_t__ FUNC2 (unsigned char const*,int,struct scsi_sense_hdr*) ; 

__attribute__((used)) static void
FUNC3(const struct scsi_device *sdev, const char *name, int tag,
		     const unsigned char *sense_buffer, int sense_len)
{
	struct scsi_sense_hdr sshdr;

	if (FUNC2(sense_buffer, sense_len, &sshdr))
		FUNC1(sdev, name, tag, &sshdr);
	else
		FUNC0(sdev, name, tag, sense_buffer, sense_len);
}