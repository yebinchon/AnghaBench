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
typedef  int /*<<< orphan*/  uint16_t ;
struct iscsi_iface_param_info {int param; int /*<<< orphan*/ * value; } ;
struct beiscsi_hba {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_VLAN_DISABLE ; 
 int EPERM ; 
#define  ISCSI_NET_PARAM_VLAN_ENABLED 129 
#define  ISCSI_NET_PARAM_VLAN_TAG 128 
 int /*<<< orphan*/  ISCSI_VLAN_ENABLE ; 
 int FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ) ; 
 struct beiscsi_hba* FUNC1 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC2(struct Scsi_Host *shost,
			  struct iscsi_iface_param_info *iface_param)
{
	struct beiscsi_hba *phba = FUNC1(shost);
	int ret = -EPERM;

	switch (iface_param->param) {
	case ISCSI_NET_PARAM_VLAN_ENABLED:
		ret = 0;
		if (iface_param->value[0] != ISCSI_VLAN_ENABLE)
			ret = FUNC0(phba, BEISCSI_VLAN_DISABLE);
		break;
	case ISCSI_NET_PARAM_VLAN_TAG:
		ret = FUNC0(phba,
					  *((uint16_t *)iface_param->value));
		break;
	}
	return ret;
}