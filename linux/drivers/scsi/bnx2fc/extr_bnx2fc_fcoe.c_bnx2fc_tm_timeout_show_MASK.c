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
struct fcoe_port {struct bnx2fc_interface* priv; } ;
struct fc_lport {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bnx2fc_interface {int tm_timeout; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct fcoe_port* FUNC1 (struct fc_lport*) ; 
 struct fc_lport* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
	char *buf)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct fc_lport *lport = FUNC2(shost);
	struct fcoe_port *port = FUNC1(lport);
	struct bnx2fc_interface *interface = port->priv;

	FUNC3(buf, "%u\n", interface->tm_timeout);
	return FUNC4(buf);
}