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
struct zfcp_adapter {int adapter_features; int /*<<< orphan*/  qdio; } ;
struct fsf_qtcb_bottom_port {int cp_util; int cb_util; int a_util; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int FSF_FEATURE_MEASUREMENT_DATA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsf_qtcb_bottom_port*) ; 
 struct fsf_qtcb_bottom_port* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fsf_qtcb_bottom_port*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct Scsi_Host *scsi_host = FUNC0(dev);
	struct fsf_qtcb_bottom_port *qtcb_port;
	struct zfcp_adapter *adapter;
	int retval;

	adapter = (struct zfcp_adapter *) scsi_host->hostdata[0];
	if (!(adapter->adapter_features & FSF_FEATURE_MEASUREMENT_DATA))
		return -EOPNOTSUPP;

	qtcb_port = FUNC2(sizeof(struct fsf_qtcb_bottom_port), GFP_KERNEL);
	if (!qtcb_port)
		return -ENOMEM;

	retval = FUNC4(adapter->qdio, qtcb_port);
	if (!retval)
		retval = FUNC3(buf, "%u %u %u\n", qtcb_port->cp_util,
				 qtcb_port->cb_util, qtcb_port->a_util);
	FUNC1(qtcb_port);
	return retval;
}