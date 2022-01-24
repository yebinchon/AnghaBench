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
struct fsf_statistics_info {int dummy; } ;
struct fsf_qtcb_bottom_config {struct fsf_statistics_info stat_info; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int FSF_FEATURE_MEASUREMENT_DATA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsf_qtcb_bottom_config*) ; 
 struct fsf_qtcb_bottom_config* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fsf_qtcb_bottom_config*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
					struct fsf_statistics_info *stat_inf)
{
	struct Scsi_Host *scsi_host = FUNC0(dev);
	struct fsf_qtcb_bottom_config *qtcb_config;
	struct zfcp_adapter *adapter;
	int retval;

	adapter = (struct zfcp_adapter *) scsi_host->hostdata[0];
	if (!(adapter->adapter_features & FSF_FEATURE_MEASUREMENT_DATA))
		return -EOPNOTSUPP;

	qtcb_config = FUNC2(sizeof(struct fsf_qtcb_bottom_config),
			      GFP_KERNEL);
	if (!qtcb_config)
		return -ENOMEM;

	retval = FUNC3(adapter->qdio, qtcb_config);
	if (!retval)
		*stat_inf = qtcb_config->stat_info;

	FUNC1(qtcb_config);
	return retval;
}