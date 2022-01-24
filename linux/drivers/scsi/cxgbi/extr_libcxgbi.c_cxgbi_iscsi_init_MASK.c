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
struct scsi_transport_template {int dummy; } ;
struct iscsi_transport {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CXGBI_DBG_ISCSI ; 
 int ENODEV ; 
 struct scsi_transport_template* FUNC0 (struct iscsi_transport*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,struct scsi_transport_template**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct iscsi_transport*) ; 

int FUNC3(struct iscsi_transport *itp,
			struct scsi_transport_template **stt)
{
	*stt = FUNC0(itp);
	if (*stt == NULL) {
		FUNC2("unable to register %s transport 0x%p.\n",
			itp->name, itp);
		return -ENODEV;
	}
	FUNC1(1 << CXGBI_DBG_ISCSI,
		"%s, registered iscsi transport 0x%p.\n",
		itp->name, stt);
	return 0;
}