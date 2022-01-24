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
struct iscsi_conn_ops {char* MaxRecvDataSegmentLength; scalar_t__ DataDigest; scalar_t__ HeaderDigest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

void FUNC1(struct iscsi_conn_ops *conn_ops)
{
	FUNC0("HeaderDigest: %s\n", (conn_ops->HeaderDigest) ?
				"CRC32C" : "None");
	FUNC0("DataDigest: %s\n", (conn_ops->DataDigest) ?
				"CRC32C" : "None");
	FUNC0("MaxRecvDataSegmentLength: %u\n",
				conn_ops->MaxRecvDataSegmentLength);
}