
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int shost; } ;


 int scsi_host_put (int ) ;

__attribute__((used)) static void qedi_boot_release(void *data)
{
 struct qedi_ctx *qedi = data;

 scsi_host_put(qedi->shost);
}
