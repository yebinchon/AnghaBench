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
struct TYPE_2__ {void* os_type; void* mad_version; void* partition_number; int /*<<< orphan*/  partition_name; int /*<<< orphan*/  srp_version; } ;
struct ibmvscsi_host_data {TYPE_1__ madapter_info; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SRP_MAD_OS_LINUX ; 
 int /*<<< orphan*/  SRP_MAD_VERSION_1 ; 
 int /*<<< orphan*/  SRP_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  partition_name ; 
 int /*<<< orphan*/  partition_number ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ibmvscsi_host_data *hostdata)
{
	FUNC2(&hostdata->madapter_info, 0x00,
			sizeof(hostdata->madapter_info));

	FUNC1(hostdata->dev, "SRP_VERSION: %s\n", SRP_VERSION);
	FUNC3(hostdata->madapter_info.srp_version, SRP_VERSION);

	FUNC4(hostdata->madapter_info.partition_name, partition_name,
			sizeof(hostdata->madapter_info.partition_name));

	hostdata->madapter_info.partition_number =
					FUNC0(partition_number);

	hostdata->madapter_info.mad_version = FUNC0(SRP_MAD_VERSION_1);
	hostdata->madapter_info.os_type = FUNC0(SRP_MAD_OS_LINUX);
}