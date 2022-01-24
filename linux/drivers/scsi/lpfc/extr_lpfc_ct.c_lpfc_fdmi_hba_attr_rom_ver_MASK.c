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
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  OptionROMVersion; } ;
struct TYPE_2__ {int /*<<< orphan*/  AttrString; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int /*<<< orphan*/  AttrValue; } ;

/* Variables and functions */
 int FOURBYTES ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int RHBA_OPTION_ROM_VERSION ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_fdmi_attr_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct lpfc_vport *vport,
			   struct lpfc_fdmi_attr_def *ad)
{
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_fdmi_attr_entry *ae;
	uint32_t len, size;

	ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
	FUNC2(ae, 0, 256);

	if (phba->sli_rev == LPFC_SLI_REV4)
		FUNC1(phba, ae->un.AttrString, 1);
	else
		FUNC3(ae->un.AttrString, phba->OptionROMVersion,
			sizeof(ae->un.AttrString));
	len = FUNC4(ae->un.AttrString,
			  sizeof(ae->un.AttrString));
	len += (len & 3) ? (4 - (len & 3)) : 4;
	size = FOURBYTES + len;
	ad->AttrLen = FUNC0(size);
	ad->AttrType = FUNC0(RHBA_OPTION_ROM_VERSION);
	return size;
}