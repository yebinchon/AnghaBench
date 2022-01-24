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
struct lpfc_vport {int dummy; } ;
struct TYPE_2__ {scalar_t__ AttrString; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int /*<<< orphan*/  AttrValue; } ;
struct Scsi_Host {int host_no; } ;

/* Variables and functions */
 int FOURBYTES ; 
 int RPRT_OS_DEVICE_NAME ; 
 void* FUNC0 (int) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_fdmi_attr_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,char*,int) ; 
 int FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(struct lpfc_vport *vport,
			       struct lpfc_fdmi_attr_def *ad)
{
	struct Scsi_Host *shost = FUNC1(vport);
	struct lpfc_fdmi_attr_entry *ae;
	uint32_t len, size;

	ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
	FUNC2(ae, 0, 256);

	FUNC3(ae->un.AttrString, sizeof(ae->un.AttrString),
		 "/sys/class/scsi_host/host%d", shost->host_no);
	len = FUNC4((char *)ae->un.AttrString,
			  sizeof(ae->un.AttrString));
	len += (len & 3) ? (4 - (len & 3)) : 4;
	size = FOURBYTES + len;
	ad->AttrLen = FUNC0(size);
	ad->AttrType = FUNC0(RPRT_OS_DEVICE_NAME);
	return size;
}