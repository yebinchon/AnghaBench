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
struct lpfc_vport {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  AttrString; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int /*<<< orphan*/  AttrValue; } ;
struct TYPE_4__ {char* nodename; } ;

/* Variables and functions */
 int FOURBYTES ; 
 int RPRT_HOST_NAME ; 
 void* FUNC0 (int) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_fdmi_attr_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct lpfc_vport *vport,
			      struct lpfc_fdmi_attr_def *ad)
{
	struct lpfc_fdmi_attr_entry *ae;
	uint32_t len, size;

	ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
	FUNC2(ae, 0, 256);

	FUNC3(ae->un.AttrString, sizeof(ae->un.AttrString), "%s",
		 FUNC1()->nodename);

	len = FUNC4(ae->un.AttrString, sizeof(ae->un.AttrString));
	len += (len & 3) ? (4 - (len & 3)) : 4;
	size = FOURBYTES + len;
	ad->AttrLen = FUNC0(size);
	ad->AttrType = FUNC0(RPRT_HOST_NAME);
	return size;
}