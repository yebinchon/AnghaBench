
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn_ops {char* MaxRecvDataSegmentLength; scalar_t__ DataDigest; scalar_t__ HeaderDigest; } ;


 int pr_debug (char*,char*) ;

void iscsi_dump_conn_ops(struct iscsi_conn_ops *conn_ops)
{
 pr_debug("HeaderDigest: %s\n", (conn_ops->HeaderDigest) ?
    "CRC32C" : "None");
 pr_debug("DataDigest: %s\n", (conn_ops->DataDigest) ?
    "CRC32C" : "None");
 pr_debug("MaxRecvDataSegmentLength: %u\n",
    conn_ops->MaxRecvDataSegmentLength);
}
