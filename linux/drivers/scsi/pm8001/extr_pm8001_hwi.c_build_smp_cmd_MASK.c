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
typedef  int u32 ;
struct smp_req {void* len_ip_ir; void* device_id; int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 void* FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u32 deviceID, __le32 hTag, struct smp_req *psmp_cmd)
{
	psmp_cmd->tag = hTag;
	psmp_cmd->device_id = FUNC0(deviceID);
	psmp_cmd->len_ip_ir = FUNC0(1|(1 << 1));
}