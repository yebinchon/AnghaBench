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
struct lpfc_vport {scalar_t__ vpi; } ;
struct TYPE_2__ {void* AttrInt; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int /*<<< orphan*/  AttrValue; } ;

/* Variables and functions */
 int FOURBYTES ; 
 int RPRT_SMART_PORT_INFO ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct lpfc_vport *vport,
			       struct lpfc_fdmi_attr_def *ad)
{
	struct lpfc_fdmi_attr_entry *ae;
	uint32_t size;

	ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;

	/* SRIOV (type 3) is not supported */
	if (vport->vpi)
		ae->un.AttrInt =  FUNC1(2);  /* NPIV */
	else
		ae->un.AttrInt =  FUNC1(1);  /* Physical */
	size = FOURBYTES + sizeof(uint32_t);
	ad->AttrLen = FUNC0(size);
	ad->AttrType = FUNC0(RPRT_SMART_PORT_INFO);
	return size;
}