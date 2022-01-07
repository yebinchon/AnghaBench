
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int shost; } ;


 int scsi_host_put (int ) ;

__attribute__((used)) static void beiscsi_boot_kobj_release(void *data)
{
 struct beiscsi_hba *phba = data;

 scsi_host_put(phba->shost);
}
