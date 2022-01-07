
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_ctx {TYPE_1__* lport; } ;
struct TYPE_2__ {int host; } ;


 int bin_file_entries ;
 int qedf_create_sysfs_attr (int ,int ) ;

void qedf_create_sysfs_ctx_attr(struct qedf_ctx *qedf)
{
 qedf_create_sysfs_attr(qedf->lport->host, bin_file_entries);
}
