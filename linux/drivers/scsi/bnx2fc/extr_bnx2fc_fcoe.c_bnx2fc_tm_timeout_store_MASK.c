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
typedef  scalar_t__ u8 ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
struct fc_lport {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bnx2fc_interface {scalar_t__ tm_timeout; } ;
struct Scsi_Host {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ERANGE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,int*) ; 
 struct fcoe_port* FUNC2 (struct fc_lport*) ; 
 struct fc_lport* FUNC3 (struct Scsi_Host*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct fc_lport *lport = FUNC3(shost);
	struct fcoe_port *port = FUNC2(lport);
	struct bnx2fc_interface *interface = port->priv;
	int rval, val;

	rval = FUNC1(buf, 10, &val);
	if (rval)
		return rval;
	if (val > 255)
		return -ERANGE;

	interface->tm_timeout = (u8)val;
	return FUNC4(buf);
}