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
struct ibmvscsi_host_data {int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvscsi_host_data*) ; 
 struct ibmvscsi_host_data* FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC3(struct Scsi_Host *shost, int reset_type)
{
	struct ibmvscsi_host_data *hostdata = FUNC2(shost);

	FUNC0(hostdata->dev, "Initiating adapter reset!\n");
	FUNC1(hostdata);

	return 0;
}