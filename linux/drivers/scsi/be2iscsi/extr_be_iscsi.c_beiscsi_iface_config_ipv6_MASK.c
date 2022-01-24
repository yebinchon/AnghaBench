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
typedef  int /*<<< orphan*/  uint32_t ;
struct iscsi_iface_param_info {int param; int /*<<< orphan*/ * value; } ;
struct beiscsi_hba {int /*<<< orphan*/ * ipv6_iface; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_IP_TYPE_V6 ; 
 int EPERM ; 
 int /*<<< orphan*/  ISCSI_IFACE_ENABLE ; 
#define  ISCSI_NET_PARAM_IFACE_ENABLE 129 
#define  ISCSI_NET_PARAM_IPV6_ADDR 128 
 int FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct beiscsi_hba* FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC4(struct Scsi_Host *shost,
			  struct iscsi_iface_param_info *iface_param,
			  void *data, uint32_t dt_len)
{
	struct beiscsi_hba *phba = FUNC3(shost);
	int ret = -EPERM;

	switch (iface_param->param) {
	case ISCSI_NET_PARAM_IFACE_ENABLE:
		if (iface_param->value[0] == ISCSI_IFACE_ENABLE)
			ret = FUNC1(phba);
		else {
			FUNC2(phba->ipv6_iface);
			phba->ipv6_iface = NULL;
		}
		break;
	case ISCSI_NET_PARAM_IPV6_ADDR:
		ret = FUNC0(phba, BEISCSI_IP_TYPE_V6,
					   iface_param->value, NULL);
		break;
	}

	return ret;
}