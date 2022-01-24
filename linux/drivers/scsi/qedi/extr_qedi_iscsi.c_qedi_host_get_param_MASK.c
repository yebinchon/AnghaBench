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
struct qedi_ctx {int src_ip; int /*<<< orphan*/  ip_type; int /*<<< orphan*/  mac; } ;
struct Scsi_Host {int host_no; } ;
typedef  enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;

/* Variables and functions */
#define  ISCSI_HOST_PARAM_HWADDRESS 130 
#define  ISCSI_HOST_PARAM_IPADDRESS 129 
#define  ISCSI_HOST_PARAM_NETDEV_NAME 128 
 int /*<<< orphan*/  TCP_IPV4 ; 
 int FUNC0 (struct Scsi_Host*,int,char*) ; 
 struct qedi_ctx* FUNC1 (struct Scsi_Host*) ; 
 int FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *shost,
			       enum iscsi_host_param param, char *buf)
{
	struct qedi_ctx *qedi;
	int len;

	qedi = FUNC1(shost);

	switch (param) {
	case ISCSI_HOST_PARAM_HWADDRESS:
		len = FUNC3(buf, qedi->mac, 6);
		break;
	case ISCSI_HOST_PARAM_NETDEV_NAME:
		len = FUNC2(buf, "host%d\n", shost->host_no);
		break;
	case ISCSI_HOST_PARAM_IPADDRESS:
		if (qedi->ip_type == TCP_IPV4)
			len = FUNC2(buf, "%pI4\n", qedi->src_ip);
		else
			len = FUNC2(buf, "%pI6\n", qedi->src_ip);
		break;
	default:
		return FUNC0(shost, param, buf);
	}

	return len;
}