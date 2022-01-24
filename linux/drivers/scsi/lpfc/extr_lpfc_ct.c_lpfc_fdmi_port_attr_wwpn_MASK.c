#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  portName; } ;
struct lpfc_vport {TYPE_2__ fc_sparam; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  AttrWWN; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int /*<<< orphan*/  AttrValue; } ;

/* Variables and functions */
 int FOURBYTES ; 
 int RPRT_PORTNAME ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_fdmi_attr_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct lpfc_vport *vport,
			 struct lpfc_fdmi_attr_def *ad)
{
	struct lpfc_fdmi_attr_entry *ae;
	uint32_t size;

	ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
	FUNC2(ae, 0,  sizeof(struct lpfc_name));

	FUNC1(&ae->un.AttrWWN, &vport->fc_sparam.portName,
	       sizeof(struct lpfc_name));
	size = FOURBYTES + sizeof(struct lpfc_name);
	ad->AttrLen = FUNC0(size);
	ad->AttrType = FUNC0(RPRT_PORTNAME);
	return size;
}